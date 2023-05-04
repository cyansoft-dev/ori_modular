import 'package:flutter/material.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../common/presentation/components/app_bar_widget.dart';

class KasOpnameHeaderDelegate extends SliverPersistentHeaderDelegate {
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
        /*Positioned(
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
            child: BlocBuilder<SelectedSubmenuCubit, MenuData>(
              buildWhen: (prev, next) => prev != next,
              builder: (context, state) => Row(
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
                        tag: "${state.title}",
                        child: Icon(
                          Iconsax.wallet_money,
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
                        Text(
                          "${state.title}",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "${state.subtitle}",
                          style: TextStyle(
                            fontSize: 20.sp,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),*/
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

  /* @override
  double get maxExtent => 320.xh;

  @override
  double get minExtent => 320.xh;*/

  @override
  double get maxExtent => 180.xh;

  @override
  double get minExtent => 180.xh;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
