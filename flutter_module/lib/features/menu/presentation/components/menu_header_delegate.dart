import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '/core/constants/color_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../core/utils/extensions.dart';
import '../../../common/presentation/components/app_bar_widget.dart';
import '../../../common/presentation/components/search_text_field.dart';
import '../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../store/domain/entities/store.dart';
import '../cubit/menu_cubit.dart';

class MenuHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double? collapseHeight;

  MenuHeaderDelegate(
      {this.expandedHeight = kToolbarHeight, this.collapseHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // final appBarSize = expandedHeight - shrinkOffset;
    // final proportion = 2 - (expandedHeight / appBarSize);
    // final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;

    double progress = shrinkOffset / (maxExtent - minExtent);
    double percent = min(1, progress);

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
            child: AnimatedOpacity(
              opacity: 1 - percent,
              duration: const Duration(milliseconds: 300),
              child: Container(
                height: 120.h,
                padding: EdgeInsets.symmetric(vertical: 15.w, horizontal: 15.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.h),
                ),
                child: BlocBuilder<SelectedStoreCubit, Store>(
                  builder: (context, selectedStore) {
                    return Row(
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
                              tag: "${selectedStore.kodetoko}",
                              child: Icon(
                                Iconsax.building_4,
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
                                selectedStore.kodetoko ?? "-",
                                style: GoogleFonts.nunito(
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.bold,
                                  // letterSpacing: 1,
                                ),
                              ),
                              /*SizedBox(height: 4.h),*/
                              Text(
                                selectedStore.namatoko?.capitalizeSentence ??
                                    "-",
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
                    );
                  },
                ),
              ),
            )),
        Positioned(
          bottom: 50.h,
          left: 20.w,
          right: 20.w,
          child: SearchTextField(
            hintText: "Search menu here",
            onChanged: (value) {
              context.read<MenuCubit>().searchMenu(value);
            },
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

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => collapseHeight ?? kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
