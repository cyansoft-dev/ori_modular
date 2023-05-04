import 'package:flutter/material.dart';

import '../../../../../core/widget/app_sizer/app_sizer.dart';

Future<void> showMinusFraudModal(BuildContext context,
    {Key? key,
    AnimationController? animationController,
    double? height,
    Widget? title,
    Widget? body}) async {
  return showModalBottomSheet(
    transitionAnimationController: animationController,
    elevation: 1,
    isDismissible: false,
    enableDrag: false,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.w),
        topRight: Radius.circular(30.w),
      ),
    ),
    context: context,
    builder: (builder) {
      return SizedBox(
          height: height ?? (1.sh - 160.xh),
          child: Padding(
              padding: EdgeInsets.only(
                  left: 20.w, right: 20.w, top: 30.h, bottom: 30.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title != null) title,
                  SizedBox(height: 24.h),
                  if (body != null) Expanded(child: body)
                ],
              )));
    },
  );
}
