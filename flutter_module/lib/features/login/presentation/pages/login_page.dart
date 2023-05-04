import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/validator.dart';
import '../../../common/presentation/components/text_field_widget.dart';
import '/core/appstate/app_state.dart';
import '/core/constants/color_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '/routing/app_routing.dart';
import '../../../../core/constants/value_constants.dart';
import '../../../common/presentation/components/dialog_message_widget.dart';
import '../../../common/presentation/components/message_widget.dart';
import '../../../splash/domain/entities/user.dart';
import '../../../splash/presentation/cubit/app_info_cubit.dart';
import '../../../splash/presentation/cubit/setting_cubit.dart';
import '../components/login_button.dart';
import '../components/login_header.dart';
import '../components/pass_text_field.dart';
import '../cubit/auth_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with WidgetsBindingObserver, SingleTickerProviderStateMixin {
  late AnimationController _messageC;

  final double roundedValue = 30.w;
  final double formHeight = 550.h;
  final _formKey = GlobalKey<FormState>();
  final ValueNotifier<String> _userC = ValueNotifier("");
  final ValueNotifier<String> _passC = ValueNotifier("");
  final ValueNotifier<bool> keyboardIsShown = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
  }

  @override
  void didChangeMetrics() {
    final value = WidgetsBinding.instance.window.viewInsets.bottom;
    if (value > 0) {
      keyboardIsShown.value = true;
    } else {
      keyboardIsShown.value = false;
    }
  }

  @override
  void dispose() {
    _userC.dispose();
    _passC.dispose();
    _messageC.dispose();
    keyboardIsShown.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appInfo = context.select((AppInfoCubit bloc) => bloc.state.data);

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: BlocListener<AuthCubit, AppState<User>>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => null,
            data: (data) {
              context
                ..read<SettingCubit>().getSetting()
                ..pushReplacementNamed(AppRoute.home.name);
            },
            error: (failure) {
              showMessage(
                context,
                failure.errMessage,
                controller: _messageC,
                type: MessageType.error,
              );
            },
          );
        },
        child: Form(
          key: _formKey,
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(delegate: LoginHeaderDelegate()),
              SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 30.w),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    Text("Sign in.",
                        style: GoogleFonts.nunito(
                          fontSize: 32.sp,
                          color: ColorConstants.fontColor,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: 28.h),
                    TextFieldWidget(
                      label: "User id",
                      hint: "input user id anda",
                      validator: MultiValidator([
                        RequiredValidator(
                            errorMessage: "User id tidak boleh kosong"),
                        MinLengthValidator(10,
                            errorMessage: "User id minimal 10 digit")
                      ]),
                      onChanged: (value) {
                        _userC.value = value;
                      },
                    ),
                    SizedBox(height: 24.h),
                    PassTextField(
                      onChanged: (value) {
                        _passC.value = value;
                      },
                    ),
                    SizedBox(height: 48.h),
                    LoginButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthCubit>().loginFromNetwork(
                              _userC.value, _passC.value, appInfo!);
                        }
                      },
                    ),
                  ]),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ValueListenableBuilder<bool>(
                      valueListenable: keyboardIsShown,
                      builder: (context, isShown, child) {
                        return Visibility(
                          visible: !isShown,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "App Version ${appInfo?.version ?? '1.0.0'}",
                              style: TextStyle(
                                color: ColorConstants.fontColor,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
