import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '/core/constants/color_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '/routing/app_routing.dart';
import '../../../../../core/appstate/app_state.dart';
import '../../../../common/presentation/components/app_bar_widget.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../domain/entities/data_collection.dart';
import '../cubit/transaction_collection_cubit.dart';
import 'data_transition_widget.dart';

class PageHeaderDelegate extends SliverPersistentHeaderDelegate {
  final TypeMenu? type;
  final String? store;
  final bool showPopButton;
  final bool showActionButton;
  final bool forceActionButton;
  final OnPop? onPop;
  final AnimationController? messageController;

  PageHeaderDelegate({
    this.type,
    this.store,
    required this.showPopButton,
    this.showActionButton = true,
    required this.forceActionButton,
    this.onPop,
    this.messageController,
  });

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
          child: AppBarWidget(
            showPopButton: showPopButton,
            onPop: onPop,
            action: showActionButton == false
                ? null
                : GestureDetector(
                    onTap: () {
                      if (forceActionButton) {
                        showMessage(
                          context,
                          "Kamu tidak dapat mengakses halaman detail sebelum proses input data selesai.",
                          controller: messageController,
                          type: MessageType.error,
                        );

                        return;
                      }
                      context.pushNamed(AppRoute.collectionDetail.name,
                          extra: type);
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
                              Iconsax.box,
                              color: Colors.white,
                              size: 26.sp,
                            ),
                          ),
                          Positioned(
                            top: -5.w,
                            right: -5.w,
                            child: BlocBuilder<TransactionCollectionCubit,
                                    AppState<ListDataCollection>>(
                                builder: (context, state) {
                              final counter = state.data?.data?.where((e) {
                                    return (e.type == type.toString() &&
                                        e.kdtk == store);
                                  }).length ??
                                  0;

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
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                          Iconsax.empty_wallet,
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
                          state.title?.capitalizeSentence ?? "",
                          style: GoogleFonts.nunito(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold,
                            // letterSpacing: 1,
                          ),
                        ),
                        */ /*SizedBox(height: 4.h),*/ /*
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

  @override
  double get maxExtent => 180.xh; //320.xh;

  @override
  double get minExtent => 180.xh;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
