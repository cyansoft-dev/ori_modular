import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/appstate/app_state.dart';
import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/failure/failure.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../core/utils/validator.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../../core/widget/barcode_scanner/barcode_scanner.dart';
import '../../../../../core/widget/gradient_icon.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../../../../common/presentation/components/button_widget.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/dropdown_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../proses/data/model/summary_audit_dto.dart';
import '../../../proses/domain/entities/summary_audit.dart';
import '../../../proses/presentation/cubit/summary_audit_cubit.dart';
import '../../domain/entities/lock_key.dart';
import '../../domain/entities/master_opname.dart';
import '../cubit/check_collection_cubit.dart';
import '../cubit/lock_sales_cubit.dart';
import '../cubit/scan_barcode_cubit.dart';
import '../cubit/transaction_master_cubit.dart';

enum LockStatus { initial, request, scan, complete }

class LockViewWidget extends StatefulWidget {
  const LockViewWidget({Key? key}) : super(key: key);
  @override
  State<LockViewWidget> createState() => _LockViewWidgetState();
}

class _LockViewWidgetState extends State<LockViewWidget>
    with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  final ValueNotifier<Duration> durationNotifier =
      ValueNotifier(const Duration(seconds: 60));
  final ValueNotifier<bool> loadingNotifier = ValueNotifier(false);
  final ValueNotifier<LockStatus> countdownNotifier =
      ValueNotifier(LockStatus.initial);
  final stations = List.of(["STATION 01", "STATION 02"], growable: false);
  late AnimationController messageC;
  final now = DateTime.now();

  Timer? countdown;
  String? selectedStation;
  bool isScan = false;
  String? qrResult;

  @override
  void initState() {
    super.initState();
    messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
  }

  @override
  void dispose() {
    messageC.dispose();
    loadingNotifier.dispose();
    countdownNotifier.dispose();
    durationNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedStore =
        context.select((SelectedStoreCubit cubit) => cubit.state);

    return MultiBlocListener(
      listeners: [
        BlocListener<CheckCollectionCubit, AppState<BaseResponse>>(
          listener: (context, state) {
            state.when(
              initial: () => null,
              loading: () {
                loadingNotifier.value = true;
                countdownNotifier.value = LockStatus.initial;
              },
              data: (data) {
                loadingNotifier.value = false;
                context
                    .read<LockSalesCubit>()
                    .lock(selectedStore.kodetoko!, selectedStation!);
              },
              error: (err) {
                loadingNotifier.value = false;
                if (err is AuthorizationFailure) {
                  showDialogMessage(
                    context,
                    state.error?.errMessage ??
                        "Ada data collection belum upload, Apakah request lock sales dilanjutkan?",
                    controller: messageC,
                    type: MessageType.warning,
                    cancelLabel: "Batal",
                    processLabel: "Lanjut",
                    onProcess: () {
                      context
                          .read<LockSalesCubit>()
                          .lock(selectedStore.kodetoko!, selectedStation!);
                    },
                  );
                }
              },
            );
          },
        ),
        BlocListener<LockSalesCubit, AppState<BaseResponse>>(
          listener: (context, state) {
            state.when(
              initial: () => resetCountdown(),
              loading: () {
                countdownNotifier.value = LockStatus.request;
                loadingNotifier.value = true;
                startCountdown();
              },
              error: (error) {
                loadingNotifier.value = false;
                stopCountdown();
                showDialogMessage(
                  context,
                  controller: messageC,
                  state.error?.errMessage ?? "Request Lock sales gagal.",
                  type: MessageType.error,
                  cancelLabel: "Batal",
                  processLabel: "Coba lagi",
                  onProcess: () {
                    context
                        .read<LockSalesCubit>()
                        .lock(selectedStore.kodetoko!, selectedStation!);
                  },
                );
              },
              data: (data) {
                loadingNotifier.value = false;
                stopCountdown();
                return showMessage(
                  context,
                  "Scan QR Code yang muncul pada layar monitor computer \n${selectedStation!.toLowerCase()}.",
                  type: MessageType.information,
                  controller: messageC,
                  onClose: () {
                    BarcodeScanner.open(context).then(
                      (result) {
                        if (result != null) {
                          qrResult = result;
                          context
                              .read<ScanBarcodeCubit>()
                              .scan(selectedStore.kodetoko!);
                        }
                      },
                    );
                  },
                );
              },
            );
          },
        ),
        BlocListener<ScanBarcodeCubit, AppState<LockKey>>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () => null,
              loading: () {
                loadingNotifier.value = true;
                countdownNotifier.value = LockStatus.scan;
              },
              data: (data) {
                countdownNotifier.value = LockStatus.complete;
                context.read<TransactionMasterCubit>().add(qrResult!);
              },
              error: (err) {
                loadingNotifier.value = false;
                showDialogMessage(
                  context,
                  controller: messageC,
                  state.error?.errMessage ?? "Lock sales gagal.",
                  type: MessageType.error,
                  cancelLabel: "Batal",
                  processLabel: "Coba lagi",
                  onProcess: () {
                    context
                        .read<ScanBarcodeCubit>()
                        .scan(selectedStore.kodetoko!);
                  },
                );
              },
            );
          },
        ),
        BlocListener<TransactionMasterCubit, AppState<MasterOpname>>(
            listener: (context, state) {
          state.maybeWhen(
              orElse: () => null,
              error: (err) {
                showMessage(
                  context,
                  err.errMessage,
                  controller: messageC,
                  type: MessageType.error,
                );
              },
              data: (master) {
                loadingNotifier.value = false;
                if (master.toko == null ||
                    master.toko!.isEmpty ||
                    master.toko != selectedStore.kodetoko) {
                  return showMessage(
                    context,
                    "Data QR-Code tidak valid, silahkan coba lagi",
                    controller: messageC,
                    type: MessageType.error,
                  );
                }

                if (master.tanggal == null || !master.tanggal!.isSame(now)) {
                  return showMessage(
                    context,
                    "Data QR-Code expired, silahkan coba lagi",
                    controller: messageC,
                    type: MessageType.error,
                  );
                }

                final summary = SummaryAudit(
                  kdtk: master.toko,
                  tanggal: master.tanggal,
                  status: AuditStatus.locked,
                );
                context.read<SummaryAuditCubit>().put(summary);
              });
        }),
      ],
      child: Form(
        key: formKey,
        child: SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 30.h),
            child: Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(ValueConstants.borderRadius),
              color: Colors.white,
              shadowColor: ColorConstants.shadowColor,
              child: Padding(
                padding: EdgeInsets.all(30.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientIcon(
                      Iconsax.security_safe,
                      size: 72.sp,
                      gradient:
                          LinearGradient(colors: ColorConstants.iconColors),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "LOCK SO KAS",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "Pilih station yang akan digunakan untuk scan QR-Code & Cetak slip rincian sales.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    DropdownWidget(
                      label: "Station",
                      hint: "Pilih Station",
                      items: stations,
                      validator: RequiredValidator(
                          errorMessage: "Field station kosong"),
                      onChanged: (value) {
                        selectedStation = value;
                      },
                    ),
                    SizedBox(height: 24.h),
                    ValueListenableBuilder(
                      valueListenable: loadingNotifier,
                      builder: (context, load, _) {
                        return Column(
                          children: [
                            ButtonWidget(
                              isLoading: load,
                              label: const Text(
                                "Proses",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  if (selectedStore.kodetoko == null) {
                                    return;
                                  }

                                  context
                                      .read<CheckCollectionCubit>()
                                      .validate(selectedStore.kodetoko!);
                                }
                              },
                            ),
                            SizedBox(height: 12.h),
                            SizedBox(
                              height: 25.h,
                              width: double.infinity,
                              child: ValueListenableBuilder<LockStatus>(
                                valueListenable: countdownNotifier,
                                builder: (context, status, _) {
                                  if (status == LockStatus.request) {
                                    return ValueListenableBuilder<Duration>(
                                      valueListenable: durationNotifier,
                                      builder: (context, duration, _) {
                                        final tick = duration.inSeconds;
                                        if (0 == tick) {
                                          context
                                              .read<LockSalesCubit>()
                                              .cancel();
                                        }

                                        return countdownText(duration);
                                      },
                                    );
                                  }

                                  if (status == LockStatus.scan) {
                                    return const Text(
                                      "Proses validasi QR-Code...",
                                      textAlign: TextAlign.center,
                                    );
                                  }

                                  return Container();
                                },
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void startCountdown() {
    durationNotifier.value = const Duration(seconds: 60);
    countdown = Timer.periodic(const Duration(seconds: 1), (_) {
      setCountdown();
    });
  }

  void stopCountdown() {
    countdown?.cancel();
  }

  void resetCountdown() {
    stopCountdown();
    durationNotifier.value = const Duration(seconds: 60);
  }

  void setCountdown() {
    const reduceSecond = 1;
    final second = durationNotifier.value.inSeconds - reduceSecond;
    if (second < 0) {
      countdown?.cancel();
    } else {
      if (mounted) {
        durationNotifier.value = Duration(seconds: second);
      }
    }
  }

  Widget countdownText(Duration duration) {
    String strDigits(int n) {
      return n.toString().padLeft(2, '0');
    }

    /*final days = strDigits(duration.inDays);
    final hours = strDigits(duration.inHours.remainder(24));*/
    final minutes = strDigits(duration.inMinutes.remainder(60));
    final seconds = strDigits(duration.inSeconds.remainder(60));

    return Text(
      "Estimasi proses : $minutes:$seconds",
      textAlign: TextAlign.center,
    );
  }
}
