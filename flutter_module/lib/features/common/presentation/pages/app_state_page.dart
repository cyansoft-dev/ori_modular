import 'package:flutter/material.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';

class AppStatePage<T extends Object> extends StatelessWidget {
  const AppStatePage({
    Key? key,
    required this.state,
    required this.onData,
    this.onError,
  }) : super(key: key);

  final AppState<T> state;
  final Widget Function(T data) onData;
  final Widget Function(Object)? onError;

  @override
  Widget build(BuildContext context) {
    return state.when(
      initial: () {
        return const SizedBox.shrink();
      },
      loading: () {
        return Center(
            child: CircularProgressIndicator(
          strokeWidth: 3.w,
          color: ColorConstants.backgroundColor,
        ));
      },
      data: (data) {
        return onData(data);
      },
      error: (failure) {
        if (onError == null) {
          /*return Padding(
            padding: EdgeInsets.all(20.w),
            child: Center(
              child: Text(
                failure.errMessage,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          );*/
          return Container();
        } else {
          return onError!(failure);
        }
      },
    );
  }
}
