import 'package:flutter/material.dart';

import '../../../../core/constants/value_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import 'button_widget.dart';
import 'dialog_message_widget.dart';

typedef OnClose = VoidCallback;

Future<void> showMessage(
  BuildContext context,
  String message, {
  AnimationController? controller,
  MessageType type = MessageType.information,
  Widget? image,
  OnClose? onClose,
}) {
  return showModalBottomSheet(
    isScrollControlled: true,
    transitionAnimationController: controller,
    elevation: 2,
    isDismissible: false,
    enableDrag: false,
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
        height: 350.h,
        child: Stack(
          children: [
            Positioned(
              top: 10.w,
              right: 10.w,
              child: IconButton(
                padding: EdgeInsets.zero,
                splashRadius: 30.r,
                icon: Icon(Icons.close_rounded, size: 42.sp),
                onPressed: () {
                  Navigator.pop(context);
                  Future.delayed(ValueConstants.animationDuration)
                      .whenComplete(() {
                    onClose?.call();
                  });
                }
              ),
            ),
            Positioned(
              top: 55.h,
              left: 20.w,
              right: 20.w,
              bottom: 20.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          type.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 24.sp,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        if (image != null) image,
                        if (image != null) SizedBox(height: 10.h),
                        Text(
                          message,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: ButtonWidget(
                      elevation: 0,
                      onPressed: () {
                        Navigator.pop(context);
                        Future.delayed(ValueConstants.animationDuration)
                            .whenComplete(() {
                          onClose?.call();
                        });
                      },
                      label: const Text(
                        "OK",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

Future<void> showPopupMessage(
  BuildContext context, {
  AnimationController? controller,
  String? title,
  String? body,
  double? height,
  bool? isScrollControlled,
}) {
  return showModalBottomSheet(
    isScrollControlled: isScrollControlled ?? true,
    transitionAnimationController: controller,
    elevation: 2,
    isDismissible: true,
    enableDrag: true,
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
        height: height ?? 300.h,
        child: Stack(
          children: [
            Positioned(
              top: 10.w,
              right: 10.w,
              child: IconButton(
                padding: EdgeInsets.zero,
                splashRadius: 30.r,
                icon: Icon(Icons.close_rounded, size: 42.sp),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Positioned(
              top: 20.h,
              left: 20.w,
              right: 20.w,
              bottom: 20.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "$title",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Flexible(
                    child: Text(
                      "$body",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
