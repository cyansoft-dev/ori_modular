import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/value_constants.dart';
import '../../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../../store/domain/entities/store.dart';
import '../../../menu/presentation/cubit/delivery_master_cubit.dart';
import '/core/di/injector.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../domain/entities/data_collection.dart';
import '../components/data_transition_widget.dart';
import '../components/page_header_delegate.dart';
import '../cubit/temp_input_cubit.dart';
import '../cubit/transaction_collection_cubit.dart';

class KodelPage extends StatefulWidget {
  const KodelPage({Key? key, required this.store}) : super(key: key);
  final Store store;
  @override
  State<KodelPage> createState() => _KodelPageState();
}

class _KodelPageState extends State<KodelPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _messageC;

  @override
  void initState() {
    super.initState();
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
    context
        .read<DeliveryMasterCubit>()
        .getData(widget.store.kodetoko!);
  }

  @override
  void dispose() {
    _messageC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final store = context.select((SelectedStoreCubit cubit) => cubit.state);

    return BlocProvider<TempInputCubit>(
      create: (context) => locator.get<TempInputCubit>(),
      child: Builder(
        builder: (context) {
          return BlocConsumer<TempInputCubit, DataCollection>(
            listenWhen: (previous, current) => previous != current,
            listener: (context, state) {
              if (state.status == TransactionStatus.done) {
                context
                  ..read<TransactionCollectionCubit>().add(state)
                  ..read<TempInputCubit>().reset();
              }
            },
            builder: (context, state) {
              final status = state.status;
              final showButton =
                  (status.index <= TransactionStatus.setDate.index);

              return WillPopScope(
                onWillPop: () => onWillPop(context, status),
                child: Scaffold(
                  resizeToAvoidBottomInset: true,
                  body: NestedScrollView(
                    headerSliverBuilder: (context, innerBoxIsScrolled) {
                      return [
                        SliverOverlapAbsorber(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                          sliver: SliverPersistentHeader(
                            pinned: true,
                            delegate: PageHeaderDelegate(
                              type: TypeMenu.kodel,
                              store: store.kodetoko,
                              showPopButton: showButton,
                              forceActionButton: !showButton,
                              messageController: _messageC,
                            ),
                          ),
                        ),
                      ];
                    },
                    body: Builder(
                      builder: (context) {
                        return CustomScrollView(
                          slivers: [
                            SliverOverlapInjector(
                              handle: NestedScrollView
                                  .sliverOverlapAbsorberHandleFor(context),
                            ),
                            SliverFillRemaining(
                              child: DataTransitionWidget(
                                status: status,
                                type: TypeMenu.kodel,
                                store: store,
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  /// handling back button on appbar is pressed
  void onPop(BuildContext context, TransactionStatus status) {
    if (status.index == TransactionStatus.setDate.index) {
      context.read<TempInputCubit>().setStatus(TransactionStatus.initial);
    } else {
      context.pop();
    }
  }

  /// handling back button native is pressed
  Future<bool> onWillPop(BuildContext context, TransactionStatus status) async {
    if (status.index > TransactionStatus.setDate.index) {
      showMessage(context, "Harap selesaikan dulu proses input data.",
          controller: _messageC, type: MessageType.warning);
      return false;
    }

    if (status.index == TransactionStatus.setDate.index) {
      context.read<TempInputCubit>().setStatus(TransactionStatus.initial);
      return false;
    }

    return true;
  }
}
