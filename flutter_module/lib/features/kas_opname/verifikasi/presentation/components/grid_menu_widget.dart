import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/utils/app_haptic.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';

class GridMenuWidget extends StatelessWidget {
  const GridMenuWidget(
      {Key? key, this.icon, this.title, this.subtitle, this.onTap})
      : super(key: key);

  final IconData? icon;
  final String? title;
  final String? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(20.h),
      color: Colors.white,
      shadowColor: ColorConstants.shadowColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(20.h),
        onTap: () {
          AppHaptics.buttonPress();
          onTap?.call();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 65.w,
                height: 65.w,
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: ColorConstants.avatarColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15.w),
                ),
                child: Center(
                  child: Hero(
                    tag: "$title",
                    child: Icon(
                      icon,
                      color: ColorConstants.iconColor,
                      size: 42.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                "$title",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                "$subtitle",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
