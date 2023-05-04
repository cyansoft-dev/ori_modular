import 'package:flutter/material.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';

class AppStateSliver<T extends Object> extends StatelessWidget {
  const AppStateSliver({
    Key? key,
    required this.state,
    required this.onData,
    this.onError,
  }) : super(key: key);

  final AppState<T> state;
  final Widget Function(T) onData;
  final Widget Function(Object)? onError;

  @override
  Widget build(BuildContext context) {
    return state.when(
      initial: () {
        return const SliverToBoxAdapter();
      },
      loading: () {
        return SliverFillRemaining(
            child: Center(
                child: CircularProgressIndicator(
          strokeWidth: 3.w,
          color: ColorConstants.backgroundColor,
        )));
      },
      data: (data) {
        return onData(data);
      },
      error: (err) {
        final failure = err;
        if (onError == null) {
          /*return SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
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
            ),
          );*/
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Container(),
          );
        } else {
          return onError!(err);
        }
      },
    );
  }
}
