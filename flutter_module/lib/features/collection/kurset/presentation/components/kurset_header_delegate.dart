import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '/core/constants/color_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../common/presentation/components/app_bar_widget.dart';
import '../../../../common/presentation/components/search_text_field.dart';
import '../cubit/kurset_cubit.dart';

class KursetHeaderDelegate extends SliverPersistentHeaderDelegate {
  // double expandedHeight = 396.xh;
  double collapseHeight = 256.xh;
  double expandedHeight = 256.xh;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // final appBarSize = expandedHeight - shrinkOffset;
    // final proportion = 2 - (expandedHeight / appBarSize);
    // final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;

    // double progress = shrinkOffset / (maxExtent - minExtent);
    // double percent = min(1, progress);

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
            child: AppBarWidget(
              showPopButton: true,
              onPop: () => context.pop(),
            )),
        Positioned(
          bottom: 50.h,
          left: 20.w,
          right: 20.w,
          child: SearchTextField(
            hintText: "Search kurset here",
            onChanged: (value) {
              context.read<KursetCubit>().searchKurset(value);
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
  double get minExtent => collapseHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
