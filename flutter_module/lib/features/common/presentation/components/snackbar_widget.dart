import 'package:flutter/material.dart';

import '/core/widget/app_sizer/app_sizer.dart';

void showSnackbarMessage(BuildContext context, {required String message, Duration? duration}) {
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: Colors.black87,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.w)),
        content: Text(message, textAlign: TextAlign.center),
        duration: duration ?? const Duration(seconds: 1),
      ),
    );
}
