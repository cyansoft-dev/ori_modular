import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/value_constants.dart';
import '../../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../../store/domain/entities/store.dart';
import '../../../menu/presentation/cubit/delivery_master_cubit.dart';
import '/core/appstate/app_state.dart';
import '/core/di/injector.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../domain/entities/data_collection.dart';
import '../components/data_transition_widget.dart';
import '../components/page_header_delegate.dart';
import '../cubit/temp_input_cubit.dart';
import '../cubit/transaction_collection_cubit.dart';

class NonKodelPage extends StatefulWidget {
  const NonKodelPage({Key? key, required this.store}) : super(key: key);
  final Store store;
  @override
  State<NonKodelPage> createState() => _NonKodelPageState();
}

class _NonKodelPageState extends State<NonKodelPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _messageC;

  @override
  void initState() {
    super.initState();
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
    context.read<DeliveryMasterCubit>().getData(widget.store.kodetoko!);
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
          return BlocListener<TransactionCollectionCubit,
              AppState<ListDataCollection>>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () => null,
                data: (data) {
                  context.read<TempInputCubit>().reset();
                },
                error: (error) {
                  return showMessage(
                    context,
                    error.errMessage,
                    controller: _messageC,
                    type: MessageType.error,
                  );
                },
              );
            },
            child: BlocConsumer<TempInputCubit, DataCollection>(
              listenWhen: (previous, current) => previous != current,
              listener: (context, state) {
                if (state.status == TransactionStatus.done) {
                  context.read<TransactionCollectionCubit>().add(state);
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
                                type: TypeMenu.nonKodel,
                                store: store.kodetoko,
                                showPopButton: showButton,
                                forceActionButton: !showButton,
                                messageController: _messageC,
                              ),
                            ),
                          )
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
                                  type: TypeMenu.nonKodel,
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
            ),
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
      showMessage(
        context,
        "Harap selesaikan dulu proses input data.",
        controller: _messageC,
        type: MessageType.warning,
      );
      return false;
    }

    if (status.index == TransactionStatus.setDate.index) {
      context.read<TempInputCubit>().setStatus(TransactionStatus.initial);
      return false;
    }

    return true;
  }
}
