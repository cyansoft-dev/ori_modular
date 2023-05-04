import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../splash/domain/entities/user.dart';

class HomeHeader extends SliverPersistentHeaderDelegate {
  const HomeHeader({
    required this.title,
    this.subtitle,
    this.showBackButton = false,
    this.userData,
  });

  final String title;
  final String? subtitle;
  final bool showBackButton;
  final User? userData;

  @override
  double get maxExtent => 180.xh;

  @override
  double get minExtent => 180.xh;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

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
          child: SafeArea(
              child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    if (subtitle != null) SizedBox(height: 4.h),
                    if (subtitle != null)
                      Text(
                        subtitle!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                  ],
                ),
                if (showBackButton)
                  GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Container(
                      height: 42.w,
                      width: 42.w,
                      decoration: BoxDecoration(
                          color: ColorConstants.shadowColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.w)),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: 26.sp,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          )),
        ),
        Positioned(
          bottom: -1,
          left: 0,
          right: 0,
          child: Container(
            height: 31.h,
            decoration: BoxDecoration(
              color: ColorConstants.canvasColor,
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
}
