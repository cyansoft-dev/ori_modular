import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/presentation/components/button_widget.dart';
import '../../../splash/domain/entities/user.dart';
import '../cubit/logout_cubit.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key, required this.userData});
  final User userData;

  @override
  Widget build(BuildContext context) {
    final isLoading =
        context.select((LogoutCubit bloc) => bloc.state.isLoading);

    return ButtonWidget(
      elevation: 1,
      onPressed: () {
        context.read<LogoutCubit>().logout(userData);
      },
      isLoading: isLoading,
      label: const Text(
        "Sign out",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
