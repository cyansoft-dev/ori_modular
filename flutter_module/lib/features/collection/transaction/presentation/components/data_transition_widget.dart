import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../../core/appstate/app_state.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../../../common/presentation/pages/app_state_page.dart';
import '../../../../store/domain/entities/store.dart';
import '../../../menu/domain/entities/delivery_master.dart';
import '../../../menu/presentation/cubit/delivery_master_cubit.dart';
import '../../domain/entities/data_collection.dart';
import '../cubit/temp_input_cubit.dart';
import '../cubit/temp_master_collection_cubit.dart';
import '../cubit/transaction_collection_cubit.dart';
import 'form_bst_widget.dart';
import 'form_initial_widget.dart';
import 'tab_input_nominal_widget.dart';

enum TypeMenu {
  kodel("KODEL"),
  nonKodel("NON KODEL");

  final String type;
  const TypeMenu(this.type);

  @override
  String toString() => type;
}

class DataTransitionWidget extends StatefulWidget {
  const DataTransitionWidget(
      {Key? key, required this.status, required this.type, required this.store})
      : super(key: key);
  final TransactionStatus status;
  final TypeMenu type;
  final Store store;
  @override
  State<DataTransitionWidget> createState() => _DataTransitionWidgetState();
}

class _DataTransitionWidgetState extends State<DataTransitionWidget>
    with SingleTickerProviderStateMixin {
  late DeliveryMaster _master;
  late AnimationController _messageC;
  final DateFormat dateFormat = DateFormat("dd-MM-yyyy");

  @override
  void initState() {
    super.initState();
    _master = const DeliveryMaster();

    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
  }

  @override
  void dispose() {
    _messageC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final index =
        context.select((TempInputCubit cubit) => cubit.state.jumlDetail) ?? 0;

    return MultiBlocListener(
      listeners: [
        BlocListener<TransactionCollectionCubit, AppState<ListDataCollection>>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) {
            state.maybeWhen(
              orElse: () => null,
              data: (ListDataCollection result) {
                if (_master.dataMaster != null) {
                  updateMaster(context, result);
                }
              },
              error: (error) {
                showMessage(
                  context,
                  error.errMessage,
                  controller: _messageC,
                  type: MessageType.error,
                );
              },
            );
          },
        ),
      ],
      child: BlocConsumer<DeliveryMasterCubit, AppState<DeliveryMaster>>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => null,
            data: (data) {
              _master = data;
              context
                  .read<TransactionCollectionCubit>()
                  .fetch(widget.store.kodetoko!);
            },
            error: (error) {
              showMessage(
                context,
                error.errMessage,
                controller: _messageC,
                type: MessageType.error,
              );
            },
          );
        },
        builder: (context, state) {
          return AppStatePage<DeliveryMaster>(
            state: state,
            onData: (data) {
              if (widget.status == TransactionStatus.setDetail) {
                return TabInputNominalWidget(pageIndex: index);
              }

              if (widget.status == TransactionStatus.setSummary) {
                return const FormBstWidget();
              }

              return FormInitialWidget(type: widget.type);

              /*
              if (widget.status == TransactionStatus.setDate) {
                return FormInitialWidget(type: widget.type);
              }

              if (widget.type == TypeMenu.kodel) {
                return const ListKodelWidget();
              }

              return const ListSenderWidget();
              */
            },
          );
        },
      ),
    );
  }

  void updateMaster(BuildContext context, ListDataCollection dataTransactions) {
    if (_master.dataMaster?.salesDate != null &&
        dataTransactions.data != null) {
      final tglMaster = _master.dataMaster!.salesDate!
          .where((t) => t.setoran!.toUpperCase().contains("SHIFT"))
          .map((e) => dateFormat.format(e.tanggal!))
          .toSet();

      final tglTrans = dataTransactions.data!
          .where((t) =>
              t.kdtk == widget.store.kodetoko &&
              t.shift!.toUpperCase().contains("SHIFT"))
          .map((e) => dateFormat.format(e.tanggal!))
          .toSet();

      final result = tglTrans.where((e) => tglMaster.contains(e));

      if (tglTrans.isNotEmpty && result.isEmpty) {
        final ids = dataTransactions.data!
            .where((e) =>
                e.kdtk == widget.store.kodetoko &&
                tglTrans.contains(dateFormat.format(e.tanggal!)))
            .map((e) => e.id!)
            .toList();

        showMessage(
          context,
          "Ada data transaksi pershift yang masih belum diupload, data akan dihapus otomatis karena sudah tidak sesuai dengan jadwal.\nSilahkan input data ulang.",
          controller: _messageC,
          type: MessageType.warning,
          onClose: () {
            context.read<TransactionCollectionCubit>().deleteBatch(ids);
          },
        );
      }
    }
    context
        .read<TempMasterCollectionCubit>()
        .create(_master, dataTransactions.data!);
  }
}
