import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../menu/domain/entities/menu.dart';
import '../cubit/selected_menu_cubit.dart';
import 'app_bar_widget.dart';

class SubmenuHeaderDelegate extends SliverPersistentHeaderDelegate {
  double expandedHeight = 320.xh;
  final Color? roundedColor;

  SubmenuHeaderDelegate({this.roundedColor});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // double progress = shrinkOffset / (maxExtent - minExtent);
    // double percent = min(1, progress);

    return BlocBuilder<SelectedMenuCubit, MenuData>(
      builder: (context, state) {
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
              child: const AppBarWidget(),
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
                          tag: "${state.title}",
                          child: Icon(
                            Iconsax.menu_board,
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
                            state.title ?? "",
                            style: GoogleFonts.nunito(
                              fontSize: 26.sp,
                              fontWeight: FontWeight.bold,
                              // letterSpacing: 1,
                            ),
                          ),
                          /*SizedBox(height: 4.h),*/
                          Text(
                            "${state.subtitle}",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w300,
                              overflow: TextOverflow.ellipsis,
                              color: Colors.grey.shade600,
                            ),
                          )
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
                  color: roundedColor ?? ColorConstants.canvasColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.w),
                      topRight: Radius.circular(30.w)),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => expandedHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
