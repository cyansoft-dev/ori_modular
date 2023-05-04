import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';

class TrackingLabel extends StatelessWidget {
  const TrackingLabel(
      {super.key,
      required this.date,
      required this.title,
      this.pic,
      required this.message,
      required this.disabled});

  final DateTime date;
  final String title;
  final String? pic;
  final String message;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: IntrinsicHeight(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              DateFormat("EEE, dd MMM yyyy, hh:MM").format(date),
              style: TextStyle(
                color: ColorConstants.fontColor,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              "Status :",
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(height: 4.h),
            Flexible(
              child: Text(
                message,
                style: TextStyle(
                  color: ColorConstants.fontColor,
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              "Penanggung jawab :",
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(height: 4.h),
            Flexible(
              child: Text(
                (pic ?? "-").capitalizeSentence,
                style: TextStyle(
                  color: ColorConstants.fontColor,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
