import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/image_constants.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';

class LoginHeaderDelegate extends SliverPersistentHeaderDelegate {
  final height = 345.xh;

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
            ),
            /*child: Center(
                child: Hero(
                  tag: "logo",
                  child: Image.asset(
                    ImageConstants.logoReverse,
                    width: 150.w,
                  ),
                ),
              ),*/
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
            ),
          ),
        ),
        Positioned(
          bottom: 75.h,
          left: 30.w,
          right: 30.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Hero(
                  tag: "logo",
                  child: Image.asset(
                    ImageConstants.indomaret,
                    width: 100.w,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                "ORI ADMINISTRATION",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 1,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4.h),
              Text("Operation Report & Information",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                  )),
              SizedBox(height: 4.h),
              Text("Administration",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        Positioned(
          bottom: -1,
          left: 0,
          right: 0,
          child: Container(
            height: 31.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.w),
                topRight: Radius.circular(30.w),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
