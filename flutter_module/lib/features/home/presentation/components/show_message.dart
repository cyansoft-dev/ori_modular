import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';

Future<void> showQuestionMessage(
  BuildContext context, {
  AnimationController? controller,
  String? question,
  String? answer,
}) {
  return showModalBottomSheet(
    isScrollControlled: true,
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
        height: 1.sh - 170.xh,
        child: Stack(children: [
          Positioned(
            top: 5.w,
            right: 5.w,
            child: IconButton(
              padding: EdgeInsets.zero,
              splashRadius: 30.r,
              icon: Icon(Icons.close_rounded, size: 42.sp),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Positioned(
            top: 75.h,
            left: 15.w,
            right: 15.w,
            bottom: 30.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 1.5.w, color: ColorConstants.borderColor),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    "$question",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1.5.w, color: ColorConstants.borderColor),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Text(
                        "$answer",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      );
    },
  );
}
