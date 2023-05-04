import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/widget/app_sizer/app_sizer.dart';

class TrackingTime extends StatelessWidget {
  const TrackingTime({
    super.key,
    required this.value,
    required this.disabled,
  });

  final DateTime value;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            DateFormat("EEE, dd MMM").format(value),
            style: TextStyle(
              color:
                  disabled ? const Color(0xFFBABABA) : const Color(0xFF636564),
              fontSize: 14.sp,
            ),
          ),
          Text(
            DateFormat("hh:MM").format(value),
            style: TextStyle(
              color:
                  disabled ? const Color(0xFFD5D5D5) : const Color(0xFF636564),
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
