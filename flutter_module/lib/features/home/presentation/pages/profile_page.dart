import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/value_constants.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../routing/app_routing.dart';
import '../../../common/presentation/components/dialog_message_widget.dart';
import '../../../common/presentation/components/message_widget.dart';
import '../../../common/presentation/components/snackbar_widget.dart';
import '../../../splash/domain/entities/app_info.dart';
import '../../../splash/domain/entities/setting_data.dart';
import '../../../splash/domain/entities/user.dart';
import '../../../splash/presentation/cubit/app_info_cubit.dart';
import '../../../login/presentation/cubit/auth_cubit.dart';
import '../../../splash/presentation/cubit/setting_cubit.dart';
import '../components/home_header.dart';
import '../components/logout_button.dart';
import '../cubit/logout_cubit.dart';
import '../cubit/tap_counter_cubit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _messageC;

  @override
  void initState() {
    super.initState();
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
  }

  @override
  void dispose() {
    _messageC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final User? userData = context.select((AuthCubit user) => user.state.data);

    final SettingData? setting =
        context.select((SettingCubit setting) => setting.state.data);

    final AppInfo? appInfo =
        context.select((AppInfoCubit info) => info.state.data);

    final int counter =
        context.select((TapCounterCubit cubit) => cubit.state.data) ?? 0;

    return Scaffold(
      body: BlocListener<LogoutCubit, AppState<bool>>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => null,
            data: (isLogout) {
              if (isLogout) {
                context.goNamed(AppRoute.login.name);
              }
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
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: HomeHeader(
                  title: "Profile",
                  subtitle: "View user details & app information",
                  userData: userData),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Theme(
                  data: ThemeData(dividerColor: Colors.transparent),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                    child: Material(
                      elevation: 1,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.w),
                      shadowColor: ColorConstants.shadowColor,
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        textColor: Colors.black,
                        iconColor: Colors.black,
                        collapsedTextColor: Colors.black,
                        collapsedIconColor: Colors.black,
                        title: Text(
                          "Detail akun",
                          style: GoogleFonts.nunito(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        children: [
                          ListTile(
                            horizontalTitleGap: 1,
                            leading: const SizedBox(
                                height: double.infinity,
                                child: Icon(Iconsax.profile_circle)),
                            title: Text(
                              "Nama User",
                              style: TextStyle(fontSize: 16.sp),
                            ),
                            subtitle: Text(userData!.namalengkap ?? "-"),
                          ),
                          ListTile(
                            horizontalTitleGap: 1,
                            leading: const SizedBox(
                                height: double.infinity,
                                child: Icon(Iconsax.personalcard)),
                            title: Text(
                              "Id User",
                              style: TextStyle(fontSize: 16.sp),
                            ),
                            subtitle: Text(userData.username ?? "-"),
                          ),
                          ListTile(
                            horizontalTitleGap: 1,
                            leading: const SizedBox(
                                height: double.infinity,
                                child: Icon(Iconsax.buildings)),
                            title: Text(
                              "Cabang",
                              style: TextStyle(fontSize: 16.sp),
                            ),
                            subtitle: Text(userData.kodecabang ?? "-"),
                          ),
                          ListTile(
                            horizontalTitleGap: 1,
                            leading: const SizedBox(
                                height: double.infinity,
                                child: Icon(Iconsax.award)),
                            title: Text(
                              "Jabatan",
                              style: TextStyle(fontSize: 16.sp),
                            ),
                            subtitle: Text(userData.jabatan ??
                                "-".replaceAll(RegExp(r"[/_-]"), " ")),
                          ),
                          const SizedBox(height: 15)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Theme(
                  data: ThemeData(dividerColor: Colors.transparent),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 20.w,
                    ),
                    child: Material(
                      elevation: 1,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.w),
                      shadowColor: ColorConstants.shadowColor,
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        textColor: Colors.black,
                        iconColor: Colors.black,
                        collapsedTextColor: Colors.black,
                        collapsedIconColor: Colors.black,
                        title: Text(
                          "Setting default apps",
                          style: GoogleFonts.nunito(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        children: [
                          ListTile(
                            horizontalTitleGap: 1,
                            leading: const SizedBox(
                              height: double.infinity,
                              child: Icon(Iconsax.location_tick),
                            ),
                            title: Text(
                              "Toleransi jarak ke toko",
                              style: TextStyle(fontSize: 16.sp),
                            ),
                            trailing: Text("${setting?.distanceMeter} m"),
                          ),
                          ListTile(
                            horizontalTitleGap: 1,
                            leading: const SizedBox(
                              height: double.infinity,
                              child: Icon(Iconsax.lock_1),
                            ),
                            title: Text(
                              "Block fake GPS",
                              style: TextStyle(fontSize: 16.sp),
                            ),
                            trailing: Switch(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.padded,
                              value: setting?.blockMockLocation ?? false,
                              onChanged: (bool value) {},
                            ),
                          ),
                          SizedBox(height: 15.h)
                        ],
                      ),
                    ),
                  ),
                ),
                if (counter == 10) SizedBox(height: 8.h),
                if (counter == 10)
                  Theme(
                    data: ThemeData(dividerColor: Colors.transparent),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right: 20.w,
                      ),
                      child: Material(
                        elevation: 1,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.w),
                        shadowColor: ColorConstants.shadowColor,
                        child: ExpansionTile(
                          initiallyExpanded: true,
                          textColor: Colors.black,
                          iconColor: Colors.black,
                          collapsedTextColor: Colors.black,
                          collapsedIconColor: Colors.black,
                          title: Text(
                            "Info Aplikasi",
                            style: GoogleFonts.nunito(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          children: [
                            ListTile(
                              horizontalTitleGap: 1,
                              leading: const SizedBox(
                                  height: double.infinity,
                                  child: Icon(Iconsax.mobile)),
                              title: Text(
                                "Device Model",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              subtitle: Text(appInfo?.model ?? "-"),
                            ),
                            ListTile(
                              horizontalTitleGap: 1,
                              leading: const SizedBox(
                                  height: double.infinity,
                                  child: Icon(Iconsax.attach_square)),
                              title: Text(
                                "App Name",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              subtitle: Text(appInfo?.appName ?? "-"),
                            ),
                            ListTile(
                              horizontalTitleGap: 1,
                              leading: const SizedBox(
                                  height: double.infinity,
                                  child: Icon(Iconsax.finger_scan)),
                              title: Text(
                                "Versi Aplikasi",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              subtitle:
                                  Text("v. ${appInfo?.version ?? "1.0.0"}"),
                            ),
                            ListTile(
                              horizontalTitleGap: 1,
                              leading: const SizedBox(
                                  height: double.infinity,
                                  child: Icon(Iconsax.code)),
                              title: Text(
                                "Source Installer",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              subtitle:
                                  Text(appInfo?.installerStore?.store ?? "-"),
                            ),
                            ListTile(
                              horizontalTitleGap: 1,
                              leading: const SizedBox(
                                  height: double.infinity,
                                  child: Icon(Iconsax.shield_search)),
                              title: Text(
                                "App Signature",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              subtitle: Text(
                                  appInfo?.isValid != null && appInfo!.isValid
                                      ? "valid"
                                      : "invalid"),
                              onLongPress: () async {
                                Clipboard.setData(ClipboardData(
                                        text: "${appInfo?.signature}"))
                                    .whenComplete(
                                  () {
                                    showSnackbarMessage(context,
                                        message: "Copied to clipboard.");
                                  },
                                );

                                // copied successfully
                              },
                            ),
                            const SizedBox(height: 15)
                          ],
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: Material(
                    elevation: 1,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.w),
                    shadowColor: ColorConstants.shadowColor,
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.w),
                      ),
                      horizontalTitleGap: 1,
                      leading: const Icon(Iconsax.headphone),
                      title: Text(
                        "Pusat Bantuan",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      trailing:
                          Icon(Icons.arrow_forward_ios_rounded, size: 20.sp),
                      onTap: () {
                        context.pushNamed(AppRoute.faq.name);
                      },
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Visibility(
                  visible: counter < 10,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 20.w,
                    ),
                    child: Material(
                      elevation: 1,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.w),
                      shadowColor: ColorConstants.shadowColor,
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.w),
                        ),
                        horizontalTitleGap: 1,
                        leading: const SizedBox(
                            height: double.infinity,
                            child: Icon(Iconsax.finger_scan)),
                        title: Text(
                          "Versi aplikasi",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                        trailing: Text(
                          "v. ${appInfo?.version}",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                        onTap: () {
                          context.read<TapCounterCubit>().increment();
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.w, right: 20.w, top: 10.h, bottom: 20.h),
                  child: LogoutButton(
                    userData: userData,
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
