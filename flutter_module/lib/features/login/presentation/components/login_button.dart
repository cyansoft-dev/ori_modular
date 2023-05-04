import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../common/presentation/components/button_widget.dart';
import '../cubit/auth_cubit.dart';

typedef OnPressed = VoidCallback;

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, this.onPressed});
  final OnPressed? onPressed;

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((AuthCubit bloc) => bloc.state.isLoading);

    return ButtonWidget(
      elevation: 1,
      color: ColorConstants.backgroundColor,
      size: Size.fromHeight(56.h),
      onPressed: onPressed,
      isLoading: isLoading,
      label: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Sign in", style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
