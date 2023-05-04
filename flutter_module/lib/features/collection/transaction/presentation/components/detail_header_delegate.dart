import 'package:flutter/material.dart';

import '/core/constants/color_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../common/presentation/components/app_bar_widget.dart';

class DetailHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(clipBehavior: Clip.none, children: [
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
        child: const AppBarWidget(),
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
    ]);
  }

  @override
  double get maxExtent => 180.xh;

  @override
  double get minExtent => 180.xh;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
