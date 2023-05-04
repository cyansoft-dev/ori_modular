import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pub_semver/pub_semver.dart' show Version;
import 'package:url_launcher/url_launcher.dart';

import '/core/appstate/app_state.dart';
import '/core/constants/color_constants.dart';
import '/core/constants/image_constants.dart';
import '/core/constants/uri_constants.dart';
import '/core/di/injector.dart';
import '/core/failure/failure.dart';
import '/core/notification/push_notification.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '/routing/app_routing.dart';
import '../../../../core/constants/value_constants.dart';
import '../../../../core/utils/installer_source.dart';
import '../../../common/presentation/components/dialog_message_widget.dart';
import '../../../common/presentation/components/message_widget.dart';
import '../../../home/domain/entities/message.dart';
import '../../../home/presentation/cubit/background_message_cubit.dart';
import '../../domain/entities/app_info.dart';
import '../../domain/entities/setting_data.dart';
import '../../domain/entities/updater_data.dart';
import '../../domain/entities/user.dart';
import '../cubit/app_info_cubit.dart';
import '../cubit/initial_message_cubit.dart';
import '../cubit/location_permission_cubit.dart';
import '../cubit/setting_cubit.dart';
import '../cubit/updater_cubit.dart';
import '../../../login/presentation/cubit/auth_cubit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  late AnimationController _messageC;
  late AnimationController _animationC;
  late Animation<double> _animation;
  late PushNotification _notification;

  PermissionStatus? _permission;

  final ValueNotifier<bool> _isLoading = ValueNotifier(true);
  bool _isUpdate = true;
  AppInfo _appInfo = const AppInfo();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _notification = locator.get<PushNotification>();
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;

    _animationC = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    _animation = CurvedAnimation(parent: _animationC, curve: Curves.easeIn)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          context.read<AppInfoCubit>().getAppInfo();
        }
      });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _animationC.forward();
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && !_isUpdate) {
      context.read<AppInfoCubit>().getAppInfo();
    }

    if (state == AppLifecycleState.resumed &&
        _permission == PermissionStatus.permanentlyDenied) {
      context.read<LocationPermissionCubit>().checkPermission();
    }
  }

  @override
  void dispose() {
    _messageC.dispose();
    _animationC.dispose();
    _isLoading.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<InitialMessageCubit>(
        create: (context) => locator.get<InitialMessageCubit>(),
        child: Builder(builder: (context) {
          return MultiBlocListener(
            listeners: [
              BlocListener<AppInfoCubit, AppState<AppInfo>>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () => null,
                    loading: () => _isLoading.value = true,
                    data: (data) {
                      _appInfo = data;

                      /// validating installer source
                      if (Platform.isAndroid && kReleaseMode && !isValid) {
                        return showMessage(
                          context,
                          "Aplikasi tidak valid, harap install aplikasi dari sumber yang sudah ditentukan.",
                          controller: _messageC,
                          type: MessageType.error,
                        ).whenComplete(() {
                          _isLoading.value = false;
                          forceClose();
                        });
                      }

                      if (_appInfo.isRooted && kReleaseMode) {
                        return showMessage(
                          context,
                          "Aplikasi tidak dapat berjalan pada rooted device.",
                          controller: _messageC,
                          type: MessageType.error,
                        ).then((_) => forceClose());
                      }

                      if (_appInfo.isCloned) {
                        return showMessage(
                          context,
                          "Aplikasi tidak dapat berjalan pada cloned app.",
                          controller: _messageC,
                          type: MessageType.error,
                        ).then((_) => forceClose());
                      }

                      context.read<LocationPermissionCubit>().checkPermission();
                    },
                    error: (failure) {
                      _isLoading.value = false;
                      final message = failure.errMessage;
                      showDialogMessage(
                        context,
                        message,
                        controller: _messageC,
                        type: MessageType.error,
                        processLabel: "Coba Lagi",
                        cancelLabel: "Keluar",
                        onProcess: () {
                          context.read<AppInfoCubit>().getAppInfo();
                        },
                        onCancel: () {
                          _isLoading.value = false;
                          forceClose();
                        },
                      );
                    },
                  );
                },
              ),
              BlocListener<LocationPermissionCubit, AppState<PermissionStatus>>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () => null,
                    loading: () => _isLoading.value = true,
                    data: (data) async {
                      _permission = data;
                      if (data == PermissionStatus.denied) {
                        _isLoading.value = false;
                        return showDialogMessage(
                          context,
                          "Service lokasi dibutuhkan untuk mengakses aplikasi ini.",
                          controller: _messageC,
                          type: MessageType.warning,
                          processLabel: "Ijinkan",
                          cancelLabel: "Batal",
                          onProcess: () {
                            context
                                .read<LocationPermissionCubit>()
                                .checkPermission();
                          },
                          onCancel: () {
                            _isLoading.value = false;
                            forceClose();
                          },
                        );
                      }

                      if (data == PermissionStatus.permanentlyDenied) {
                        _isLoading.value = false;
                        return showDialogMessage(
                          context,
                          "Service lokasi tidak diijinkan permanent.",
                          controller: _messageC,
                          type: MessageType.warning,
                          processLabel: "Buka Setting",
                          cancelLabel: "Batal",
                          onProcess: () {
                            openAppSettings();
                          },
                          onCancel: () {
                            _isLoading.value = false;
                            forceClose();
                          },
                        );
                      }

                      if (data == PermissionStatus.granted) {
                        context.read<UpdaterCubit>().getUpdater();
                      }
                    },
                    error: (failure) {
                      _isLoading.value = false;
                      final message = failure.errMessage;
                      showDialogMessage(
                        context,
                        message,
                        controller: _messageC,
                        type: MessageType.error,
                        processLabel: "Coba Lagi",
                        cancelLabel: "Keluar",
                        onProcess: () {
                          context
                              .read<LocationPermissionCubit>()
                              .checkPermission();
                        },
                        onCancel: () {
                          _isLoading.value = false;
                          forceClose();
                        },
                      );
                    },
                  );
                },
              ),
              BlocListener<UpdaterCubit, AppState<UpdaterData>>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () => null,
                    loading: () => _isLoading.value = true,
                    data: (data) {
                      /*checkAppVersion(context, data);*/
                      context.read<AuthCubit>().loginFromStorage();
                    },
                    error: (failure) {
                      _isLoading.value = false;
                      final message = failure.errMessage;
                      showDialogMessage(
                        context,
                        message,
                        controller: _messageC,
                        type: MessageType.error,
                        processLabel: "Coba Lagi",
                        cancelLabel: "Keluar",
                        onProcess: () {
                          context.read<UpdaterCubit>().getUpdater();
                        },
                        onCancel: () {
                          _isLoading.value = false;
                          forceClose();
                        },
                      );
                    },
                  );
                },
              ),
              BlocListener<AuthCubit, AppState<User>>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () => null,
                    loading: () => _isLoading.value = true,
                    data: (data) {
                      context
                        ..read<SettingCubit>().getSetting()
                        ..read<InitialMessageCubit>().getInitialMessage();
                    },
                    error: (error) {
                      _isLoading.value = false;
                      context.pushReplacementNamed(AppRoute.login.name);
                    },
                  );
                },
              ),
              BlocListener<InitialMessageCubit, AppState<Message>>(
                  listener: (context, state) {
                state.maybeWhen(
                    orElse: () => null,
                    data: (data) {
                      if (data.message != null) {
                        _notification.show(data.message!);
                      }
                    },
                    error: (error) => showMessage(
                          context,
                          error.errMessage,
                          controller: _messageC,
                          type: MessageType.error,
                        ));
              }),
              BlocListener<BackgroundMessageCubit, AppState<List<Message>>>(
                  listener: (context, state) {
                state.maybeWhen(
                    orElse: () => null,
                    data: (data) {
                      if (data.isNotEmpty && data.last.message != null) {
                        _notification.show(data.last.message!);
                      }
                    },
                    error: (error) => showMessage(
                          context,
                          error.errMessage,
                          controller: _messageC,
                          type: MessageType.error,
                        ));
              }),
              BlocListener<SettingCubit, AppState<SettingData>>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () => null,
                    loading: () => _isLoading.value = true,
                    data: (data) {
                      context.pushReplacementNamed(AppRoute.home.name);
                    },
                    error: (failure) {
                      _isLoading.value = false;
                      if (failure is AuthorizationFailure) {
                        context.pushReplacementNamed(AppRoute.login.name);
                      } else {
                        showDialogMessage(
                          context,
                          failure.errMessage,
                          controller: _messageC,
                          type: MessageType.error,
                          processLabel: "Coba Lagi",
                          cancelLabel: "Keluar",
                          onProcess: () {
                            context.read<SettingCubit>().getSetting();
                          },
                          onCancel: () {
                            _isLoading.value = false;
                            forceClose();
                          },
                        );
                      }
                    },
                  );
                },
              ),
            ],
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Hero(
                        tag: "logo",
                        child: Image.asset(
                          ImageConstants.logo,
                          width: 175.w,
                        ),
                      ),
                    ),
                    // child: Image.asset(
                    //   "assets/png/banner.png",
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
                Positioned(
                  top: 150.h,
                  left: 20.w,
                  right: 20.w,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          "ORI",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36.sp,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          "ADMINISTRATION",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 1.sh - 250.h,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.center,
                    child: ValueListenableBuilder<bool>(
                      valueListenable: _isLoading,
                      builder: (context, value, child) {
                        return Visibility(
                          visible: value,
                          child: CircularProgressIndicator(
                            strokeWidth: 3.w,
                            color: ColorConstants.backgroundColor,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 1.sh - 40.h,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "PT. Indomarco Prismatama © 2022",
                      style: TextStyle(
                          color: ColorConstants.fontColor, fontSize: 16.sp),
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }

  Future<void> forceClose() async {
    Future.delayed(const Duration(milliseconds: 500)).whenComplete(() {
      SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop', true);
    });
  }

  Future<void> checkAppVersion(
      BuildContext context, UpdaterData updater) async {
    /// Check versioning app
    final currentVersion = Version.parse(_appInfo.version ?? "1.0.0");
    final serverVersion = Version.parse(updater.number ?? "1.0.0");
    final comparing = currentVersion.compareTo(serverVersion);
    if (comparing < 0) {
      return showDialogMessage(
        context,
        "Versi terbaru ORI Administrasi tersedia, \n Update sekarang ?",
        controller: _messageC,
        type: MessageType.error,
        processLabel: "Update",
        cancelLabel: "Keluar",
        onProcess: () {
          _isUpdate = true;
          startUpdate(context);
        },
        onCancel: () {
          _isLoading.value = false;
          forceClose();
        },
      );
    }

    context.read<AuthCubit>().loginFromStorage();
  }

  Future<void> startUpdate(BuildContext context) async {
    try {
      late Uri uri;
      if (Platform.isAndroid) {
        uri = Uri.parse(UrlConstants.uriAndroid);
      }

      if (Platform.isIOS) {
        uri = Uri.parse(UrlConstants.uriIOS);
      }

      canLaunchUrl(uri).then(
        (result) async {
          if (result) {
            await launchUrl(uri);
          }
        },
      );
    } catch (e) {
      if (Platform.isAndroid) {
        showMessage(
          context,
          "Gagal terhubung ke Play Store",
          controller: _messageC,
          type: MessageType.error,
        );
      }
      if (Platform.isIOS) {
        showMessage(
          context,
          "Gagal terhubung ke App store",
          controller: _messageC,
          type: MessageType.error,
        );
      }

      showMessage(
        context,
        "Gagal membuka url updater",
        controller: _messageC,
        type: MessageType.error,
      );
    }
  }

  bool get isValid {
    if (kDebugMode) {
      return true;
    }

    switch (_appInfo.installerStore) {
      case InstallerSource.googlePlayStore:
        return true;

      default:
        return _appInfo.isValid;
    }
  }
}
