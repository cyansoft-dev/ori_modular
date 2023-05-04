import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../cubit/timer_cubit.dart';
import '/core/appstate/app_state.dart';
import '/core/constants/color_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../routing/app_routing.dart';
import '../../../common/presentation/components/search_text_field.dart';
import '../../../common/presentation/pages/app_state_page.dart';
import '../../../home/domain/entities/message.dart';
import '../../../home/presentation/cubit/local_message_cubit.dart';
import '../../../login/presentation/cubit/auth_cubit.dart';
import '../../../menu/presentation/cubit/menu_cubit.dart';
import '../../../splash/domain/entities/user.dart';
import '../cubit/store_cubit.dart';

class StoreHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double? collapseHeight;
  final bool isStoreCrew;

  StoreHeaderDelegate({
    this.isStoreCrew = false,
    this.expandedHeight = kToolbarHeight,
    this.collapseHeight,
  });

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
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ORI",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        "Administration",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(AppRoute.notification.name);
                    },
                    child: Container(
                      height: 42.w,
                      width: 42.w,
                      decoration: BoxDecoration(
                          color: ColorConstants.shadowColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.w)),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Center(
                            child: Icon(
                              Iconsax.notification,
                              color: Colors.white,
                              size: 26.sp,
                            ),
                          ),
                          Positioned(
                            top: -5.w,
                            right: -5.w,
                            child: BlocBuilder<LocalMessageCubit,
                                AppState<List<Message>>>(
                              builder: (context, state) {
                                return AppStatePage<List<Message>>(
                                  state: state,
                                  onData: (remote) {
                                    final counter = remote
                                        .where((e) => e.isRead == false)
                                        .length;

                                    if (counter == 0) {
                                      return const SizedBox.shrink();
                                    }

                                    return Container(
                                      height: 25.w,
                                      width: 25.w,
                                      padding: EdgeInsets.all(3.w),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: ColorConstants.badgeColor),
                                      child: Center(
                                        child: Text(
                                          "$counter",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: ColorConstants.fontColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))),
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
                    child: Center(child: iconTime()),
                  ),
                  SizedBox(width: 10.w),
                  Flexible(
                    child: BlocBuilder<AuthCubit, AppState<User>>(
                      builder: (context, state) {
                        return AppStatePage(
                          state: state,
                          onData: (user) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              greetingText(),
                              /*SizedBox(height: 4.h),*/
                              Text(
                                user.namalengkap?.capitalizeSentence ?? "-",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w300,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.grey.shade600,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 50.h,
          left: 20.w,
          right: 20.w,
          child: SearchTextField(
            hintText:
                isStoreCrew ? "Search menu here" : "Search store code here",
            onChanged: (value) {
              if (isStoreCrew) {
                context.read<MenuCubit>().searchMenu(value);
              } else {
                context.read<StoreCubit>().searchStore(value);
              }
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

  Widget iconTime() {
    return BlocBuilder<TimerCubit, TimeSharing>(
      buildWhen: (prev, next) => prev.index != next.index,
      builder: (context, time) {
        late IconData iconData;
        switch (time) {
          case TimeSharing.PAGI:
            iconData = CupertinoIcons.cloud_sun;
            break;

          case TimeSharing.SIANG:
            iconData = CupertinoIcons.brightness;
            break;

          case TimeSharing.SORE:
            iconData = CupertinoIcons.cloud_sun;
            break;

          case TimeSharing.PETANG:
            iconData = CupertinoIcons.cloud_moon;
            break;

          default:
            iconData = CupertinoIcons.moon_stars;
            break;
        }

        return Icon(
          iconData,
          color: ColorConstants.iconColor,
          size: 42.sp,
        );
      },
    );
  }

  Widget greetingText() {
    return BlocBuilder<TimerCubit, TimeSharing>(
      buildWhen: (prev, next) => prev.index != next.index,
      builder: (context, time) {
        String greeting = "SELAMAT ${time.toString()}";

        return Text(
          greeting,
          style: GoogleFonts.nunito(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            // letterSpacing: 1,
          ),
        );
      },
    );
  }
}
