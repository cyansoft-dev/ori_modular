import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/appstate/app_state.dart';
import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../../core/widget/gradient_icon.dart';
import '../../../../../routing/app_routing.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../../../common/presentation/cubit/selected_submenu_cubit.dart';
import '../../../../menu/domain/entities/menu.dart';
import '../../../proses/data/model/summary_audit_dto.dart';
import '../../../proses/domain/entities/summary_audit.dart';
import '../../../proses/presentation/cubit/summary_audit_cubit.dart';
import '../cubit/transaction_master_cubit.dart';

class MenuOpnameWidget extends StatefulWidget {
  const MenuOpnameWidget({Key? key, required this.menu, required this.store})
      : super(key: key);
  final List<MenuData> menu;
  final String store;
  @override
  State<MenuOpnameWidget> createState() => _MenuOpnameWidgetState();
}

class _MenuOpnameWidgetState extends State<MenuOpnameWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _messageC;
  late List<MenuData> menu;
  @override
  void initState() {
    super.initState();
    menu = widget.menu;
    context.read<TransactionMasterCubit>().get(widget.store);

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
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
          child: Material(
            elevation: 1,
            borderRadius: BorderRadius.circular(ValueConstants.borderRadius),
            color: Colors.white,
            shadowColor: ColorConstants.shadowColor,
            child: BlocBuilder<SummaryAuditCubit, AppState<SummaryAudit>>(
                builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  data: (data) {
                    return InkWell(
                      borderRadius:
                          BorderRadius.circular(ValueConstants.borderRadius),
                      onTap: () {
                        getMessageAccess(context,
                            menu: menu[index], audit: data);
                      },
                      child: Padding(
                        // height: 120.h,
                        padding: EdgeInsets.all(15.h),
                        child: Row(
                          children: [
                            Container(
                              width: 52.w,
                              height: 52.w,
                              padding: EdgeInsets.all(5.w),
                              decoration: BoxDecoration(
                                color: ColorConstants.avatarColor,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15.w),
                              ),
                              child: Hero(
                                tag: "${menu[index].title}",
                                child: GradientIcon(
                                  Iconsax.card_edit,
                                  // color: ColorConstants.iconColor,
                                  gradient: LinearGradient(
                                    colors: ColorConstants.iconColors,
                                  ),
                                  size: 36.sp,
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${menu[index].title}",
                                    style: GoogleFonts.nunito(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    "${menu[index].subtitle}",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            }),
          ),
        );
      }, childCount: menu.length),
    );
  }

  Future<void> getMessageAccess(
    BuildContext context, {
    required MenuData menu,
    required SummaryAudit audit,
  }) async {
    final status = audit.status;
    final path = menu.path;
    final balance = checkBalance(audit.summary, audit.adjust);

    /// proses validasi menu
    /// jika status audit sudah selesai
    ///
    if (status == AuditStatus.completed) {
      return showMessage(
        context,
        MessageOpnameStatus.sudahSelesai.status,
        controller: _messageC,
      );
    }

    /// proses validasi menu
    /// jika status audit sudah upload & menu yang
    /// dipilih selain menu proses opname
    ///
    if ((path != AppRoute.kasOpnameProses.path) &&
        (status.index < AuditStatus.uploaded.index)) {
      return showMessage(
        context,
        MessageOpnameStatus.belumProses.status,
        controller: _messageC,
      );
    }

    /// proses validasi menu
    /// jika menu yang dipilih adalah menu proses opname
    /// dan status audit sudah selesai upload
    ///
    if ((path == AppRoute.kasOpnameProses.path) &&
        (status.index >= AuditStatus.uploaded.index)) {
      return showMessage(
        context,
        MessageOpnameStatus.doubleProses.status,
        controller: _messageC,
      );
    }

    /// proses validasi menu
    /// jika menu yang dipilih adalah menu verifikasi
    /// dan nilai antara hasil SO & verifikasi sudah sesuai
    ///
    if (path == AppRoute.kasOpnameReview.path) {
      if (balance) {
        return showMessage(
          context,
          MessageOpnameStatus.sudahBalance.status,
          controller: _messageC,
        );
      }
    }

    /// proses validasi menu
    /// jika menu yang dipilih adalah menu validasi
    /// dan nilai antara hasil SO & verifikasi belum sesuai
    /// atau nilai summary != 0 tetapi belum validasi data
    ///
    if (path == AppRoute.kasOpnameValidate.path && audit.summary != 0.0) {
      if (!balance) {
        return showMessage(
          context,
          MessageOpnameStatus.belumBalance.status,
          controller: _messageC,
        );
      }

      if (audit.adjust == null || audit.adjust!.isEmpty) {
        return showMessage(
          context,
          MessageOpnameStatus.belumReview.status,
          controller: _messageC,
        );
      }
    }

    context
      ..push(menu.path!)
      ..read<SelectedSubmenuCubit>().setMenu(menu);
  }

  bool checkBalance(double summary, List<AdjustmentAudit>? adjust) {
    if (adjust == null || adjust.isEmpty) {
      return false;
    }

    final adjuster = adjust.fold(0.0, (value, e) => value + e.nominal);
    if (summary < 0) {
      final diffValue = summary + adjuster;
      return diffValue >= 0;
    }

    if (summary > 0) {
      final diffValue = summary - adjuster;
      return diffValue <= 0;
    }

    return true;
  }
}

enum MessageOpnameStatus {
  doubleProses(
      "Proses hitung SO KAS sudah dilakukan, silahkan melakukan verifikasi data."),
  belumProses("Anda belum melakukan proses SO KAS."),
  belumReview(
      "Anda belum melakukan verifikasi hasil SO KAS, silahkan verifikasi data dahulu."),
  belumBalance(
      "Nilai verifikasi belum sesuai dengan hasil SO KAS, Silahkan verifikasi data dahulu."),
  sudahBalance(
      "Nilai verifikasi sudah sesuai dengan hasil SO KAS, Silahkan melakukan proses validasi data."),
  sudahSelesai("Proses SO KAS sudah selesai.");

  final String status;
  const MessageOpnameStatus(this.status);
}
