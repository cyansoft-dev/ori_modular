import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';

typedef OnPressed = VoidCallback;

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.label,
      this.onPressed,
      this.isLoading = false,
      this.size,
      this.color,
      this.side,
      this.elevation = 1});

  final OnPressed? onPressed;
  final Widget label;
  final Size? size;
  final bool isLoading;
  final Color? color;
  final BorderSide? side;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size ?? Size(double.infinity, 56.h),
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
              (Set<MaterialState> states) =>
                  color ?? ColorConstants.buttonColor),
          elevation:
              MaterialStateProperty.resolveWith<double>((states) {
                if(states.contains(MaterialState.disabled)){
                  return 0;
                }

                return elevation;
              }),
          side: MaterialStateBorderSide.resolveWith((states) => side),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.r),
            ),
          ),
        ),
        child: isLoading
            ? SizedBox.square(
                dimension: 26.w,
                child: CircularProgressIndicator(
                  strokeWidth: 3.w,
                  color: Colors.white,
                ),
              )
            : label,
      ),
    );
  }
}
