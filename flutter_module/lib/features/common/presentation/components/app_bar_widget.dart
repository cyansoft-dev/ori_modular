import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/core/constants/color_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';

typedef OnPop = VoidCallback;

class AppBarWidget extends StatelessWidget {
  const AppBarWidget(
      {super.key, this.showPopButton = true, this.onPop, this.action});
  final bool showPopButton;
  final OnPop? onPop;
  final Widget? action;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: !showPopButton
                  ? SizedBox.square(
                      dimension: 42.w,
                    )
                  : Container(
                      height: 42.w,
                      width: 42.w,
                      decoration: BoxDecoration(
                          color: ColorConstants.shadowColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.w)),
                      child: GestureDetector(
                        onTap: () {
                          if (onPop == null) {
                            context.pop();
                          } else {
                            onPop!.call();
                          }
                        },
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                            size: 26.sp,
                          ),
                        ),
                      ),
                    ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: action ??
                  SizedBox.square(
                    dimension: 42.w,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
