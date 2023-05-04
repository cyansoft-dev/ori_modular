import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../common/presentation/components/app_bar_widget.dart';
import '../../../proses/domain/entities/summary_audit.dart';

class ReviewOpnameHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double? selisih;
  final List<AdjustmentAudit>? adjustment;

  ReviewOpnameHeaderDelegate({this.selisih, this.adjustment});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              color: ColorConstants.backgroundColor,
              gradient: LinearGradient(
                colors: ColorConstants.gradientColors,
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
              // child: Image.asset(
              //   ImageConstants.banner,
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
        ),
        Positioned(
          top: 30.h,
          left: 20.w,
          right: 20.w,
          child: const AppBarWidget(
            showPopButton: false,
          ),
        ),
        Positioned(
          top: 150.xh,
          left: 20.w,
          right: 20.w,
          child: Container(
            height: 120.h,
            padding: EdgeInsets.symmetric(vertical: 15.w, horizontal: 15.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.h),
            ),
            child: Row(
              children: [
                Container(
                  width: 80.h,
                  height: 80.h,
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: ColorConstants.avatarColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15.w),
                  ),
                  child: Center(
                    child: Hero(
                      tag: "nominal",
                      child: Icon(
                        Iconsax.card,
                        color: ColorConstants.iconColor,
                        size: 42.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /*Text(
                        "Hasil SOKAS",
                        style: GoogleFonts.nunito(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),*/
                      Text(
                        selisih?.toCurrencyFormat ?? "-",
                        style: GoogleFonts.nunito(
                          color: (selisih ?? 0) < 0
                              ? ColorConstants.iconColor
                              : ColorConstants.fontColor,
                          fontSize: 34.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        "Nilai Verifikasi : ${adjustValue.toCurrencyFormat}",
                        style: GoogleFonts.nunito(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -1.h,
          left: 0,
          right: 0,
          child: Container(
            height: 31.h,
            decoration: BoxDecoration(
              color: ColorConstants.canvasColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.w),
                  topRight: Radius.circular(30.w)),
            ),
          ),
        ),
      ],
    );
  }

  double get adjustValue {
    if (adjustment == null) {
      return 0.0;
    }
    return adjustment!.fold(0, (prev, e) => prev + e.nominal);
  }

  @override
  double get maxExtent => 320.xh;

  @override
  double get minExtent => 320.xh;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
