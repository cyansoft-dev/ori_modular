import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../common/presentation/pages/app_state_page.dart';

import '../../../../../core/appstate/app_state.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/di/injector.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../../menu/domain/entities/master_opname.dart';
import '../../../menu/presentation/cubit/transaction_master_cubit.dart';
import '../../data/model/summary_audit_dto.dart';
import '../../domain/entities/data_audit.dart';
import '../../domain/entities/summary_audit.dart';
import '../components/kas_opname_header_delegate.dart';
import '../components/page_opname_current_date.dart';
import '../components/page_opname_dana_kas.dart';
import '../components/page_opname_last_date.dart';
import '../components/page_opname_rrak.dart';
import '../cubit/summary_audit_cubit.dart';
import '../cubit/temp_audit_cubit.dart';
import '../cubit/upload_data_opname_cubit.dart';

class ProsesOpnamePage extends StatefulWidget {
  const ProsesOpnamePage({super.key});

  @override
  State<ProsesOpnamePage> createState() => _ProsesOpnamePageState();
}

class _ProsesOpnamePageState extends State<ProsesOpnamePage>
    with TickerProviderStateMixin {
  late PageController _controller;
  late AnimationController _messageC;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
  }

  @override
  void dispose() {
    _messageC.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UploadDanaOpnameCubit>(
            create: (context) => locator.get<UploadDanaOpnameCubit>()),
        BlocProvider<TempAuditCubit>(
          create: (context) => locator.get<TempAuditCubit>(),
        ),
      ],
      child: WillPopScope(
        onWillPop: () => onWillPop(context),
        child: Scaffold(
          body: BlocBuilder<TransactionMasterCubit, AppState<MasterOpname>>(
              builder: (context, state) {
            return AppStatePage(
                state: state,
                onData: (master) {
                  return NestedScrollView(
                    headerSliverBuilder: (context, innerBoxIsScrolled) => [
                      SliverOverlapAbsorber(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                        sliver: SliverPersistentHeader(
                          pinned: true,
                          delegate: KasOpnameHeaderDelegate(),
                        ),
                      ),
                    ],
                    body: Builder(
                      builder: (context) {
                        return MultiBlocListener(
                          listeners: [
                            BlocListener<UploadDanaOpnameCubit,
                                AppState<SummaryAudit>>(
                              listener: (context, state) {
                                state.maybeWhen(
                                  orElse: () => null,
                                  data: (data) {
                                    showMessage(
                                      context,
                                      "Proses upload data SO KAS berhasil.",
                                      type: MessageType.success,
                                      controller: _messageC,
                                      onClose: () {
                                        context
                                          ..pop()
                                          ..read<SummaryAuditCubit>()
                                              .updateSummary(SummaryAudit(
                                            summary: data.summary,
                                            status: AuditStatus.uploaded,
                                          ));
                                      },
                                    );
                                  },
                                  error: (err) {
                                    showMessage(context, err.errMessage,
                                        type: MessageType.error,
                                        controller: _messageC);
                                    return;
                                  },
                                );
                              },
                            ),
                          ],
                          child: BlocConsumer<TempAuditCubit, DataAudit>(
                            listener: (context, audit) {
                              if (audit.status == AuditStatus.finished) {
                                final upload =
                                    audit.copyWith(kdtk: master.toko);
                                context
                                    .read<UploadDanaOpnameCubit>()
                                    .upload(upload);
                              }
                            },
                            builder: (context, state) {
                              final dataAudit = state;
                              return CustomScrollView(
                                slivers: [
                                  SliverOverlapInjector(
                                    handle: NestedScrollView
                                        .sliverOverlapAbsorberHandleFor(
                                            context),
                                  ),
                                  SliverFillRemaining(
                                    child: PageView(
                                      scrollDirection: Axis.vertical,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      controller: _controller,
                                      children: [
                                        PageOpnameCurrentDate(
                                          pageController: _controller,
                                          dataCurrent: dataAudit.danaCurrent,
                                          master: master,
                                        ),
                                        PageOpnameDanaKas(
                                          pageController: _controller,
                                          danaKas: dataAudit.danaKas,
                                          master: master,
                                        ),
                                        PageOpnameRrak(
                                          pageController: _controller,
                                          danaRrak: dataAudit.danaRrak,
                                          master: master,
                                        ),
                                        PageOpnameLastDate(
                                          pageController: _controller,
                                          danaLast: dataAudit.danaLastDay,
                                          master: master,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        );
                      },
                    ),
                  );
                });
          }),
        ),
      ),
    );
  }

  /// handling back button native is pressed
  Future<bool> onWillPop(BuildContext context) async {
    showMessage(context, "Harap selesaikan dulu proses input data.",
        controller: _messageC, type: MessageType.warning);
    return true;
  }
}
