import 'package:flutter/material.dart';

import '../../../../core/constants/value_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../core/constants/color_constants.dart';
import 'button_widget.dart';

typedef OnProcess = VoidCallback;
typedef OnCancel = VoidCallback;

enum MessageType {
  warning("Perhatian"),
  information("Informasi"),
  error("Oops !!"),
  success("Sukses");

  final String message;
  const MessageType(this.message);

  @override
  String toString() => message;
}

Future<void> showDialogMessage(
  BuildContext context,
  String message, {
  AnimationController? controller,
  MessageType type = MessageType.information,
  String? processLabel,
  String? cancelLabel,
  OnProcess? onProcess,
  OnCancel? onCancel,
}) {
  return showModalBottomSheet(
    transitionAnimationController: controller,
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
        height: 375.h,
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 3,
                child: Center(
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
              ),
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    ButtonWidget(
                      elevation: 0,
                      onPressed: () {
                        Navigator.pop(context);
                        Future.delayed(ValueConstants.animationDuration)
                            .whenComplete(() {
                          onProcess?.call();
                        });
                      },
                      label: Text(
                        processLabel ?? "OK",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    ButtonWidget(
                      elevation: 0,
                      onPressed: () {
                        Navigator.pop(context);
                        Future.delayed(ValueConstants.animationDuration)
                            .whenComplete(() {
                          onCancel?.call();
                        });
                      },
                      color: Colors.white,
                      side: BorderSide(
                          width: 1.w, color: ColorConstants.backgroundColor),
                      label: Text(
                        cancelLabel ?? "CANCEL",
                        style: TextStyle(color: ColorConstants.backgroundColor),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
