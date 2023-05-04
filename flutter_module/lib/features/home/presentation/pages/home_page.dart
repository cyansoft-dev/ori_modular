import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '/core/appstate/app_state.dart';
import '/core/constants/color_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../core/constants/value_constants.dart';
import '../../../common/presentation/components/dialog_message_widget.dart';
import '../../../common/presentation/components/message_widget.dart';
import '../../../common/presentation/components/snackbar_widget.dart';
import '../../../common/presentation/cubit/location_cubit.dart';
import '../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../login/presentation/cubit/auth_cubit.dart';
import '../../../menu/domain/entities/menu.dart';
import '../../../menu/presentation/cubit/menu_cubit.dart';
import '../../../menu/presentation/pages/menu_page.dart';
import '../../../store/domain/entities/store.dart';
import '../../../store/presentation/cubit/store_cubit.dart';
import '../../../store/presentation/pages/store_page.dart';
import '../../domain/entities/message.dart';
import '../cubit/foreground_message_cubit.dart';
import '../cubit/local_message_cubit.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final ValueNotifier<int> _menuIndex = ValueNotifier(0);
  DateTime? currentBackPressTime;
  final bool _locationIsError = false;
  late AnimationController _messageC;

  @override
  void initState() {
    super.initState();
    context
      ..read<LocalMessageCubit>().getMessage()
      ..read<StoreCubit>().getStore()
      ..read<MenuCubit>().getMenu();
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
  }

  @override
  void dispose() {
    _messageC.dispose();
    _menuIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final storeCrew =
        context.select((AuthCubit cubit) => cubit.state.data?.isStoreCrew);

    return Scaffold(
      body: WillPopScope(
        onWillPop: () => onWillPop(context),
        child: MultiBlocListener(
            listeners: [
              BlocListener<StoreCubit, AppState<ListStore>>(
                  listener: (context, state) {
                state.maybeWhen(
                  orElse: () => null,
                  data: (result) {
                    if (storeCrew != true) {
                      return;
                    }

                    if (result.stores != null && result.stores!.isNotEmpty) {
                      context
                          .read<SelectedStoreCubit>()
                          .setStore(result.stores!.first);
                    } else {
                      showMessage(
                        context,
                        "Data toko kosong, Silahkan refresh halaman.",
                        controller: _messageC,
                        type: MessageType.error,
                      );
                    }
                  },
                  error: (error) => showMessage(
                    context,
                    error.errMessage,
                    controller: _messageC,
                    type: MessageType.error,
                  ),
                );
              }),
              BlocListener<MenuCubit, AppState<Menu>>(
                  listener: (context, state) {
                state.maybeWhen(
                  orElse: () => null,
                  error: (error) => showMessage(
                    context,
                    error.errMessage,
                    controller: _messageC,
                    type: MessageType.error,
                  ),
                );
              }),
              BlocListener<ForegroundMessageCubit, AppState<List<Message>>>(
                  listener: (context, state) {
                state.maybeWhen(
                  orElse: () => null,
                  error: (error) => showMessage(
                    context,
                    error.errMessage,
                    controller: _messageC,
                    type: MessageType.error,
                  ),
                );
              }),
            ],
            child: RefreshIndicator(
                onRefresh: () async {
                  if (_locationIsError) context.read<LocationCubit>().start();
                },
                child: resultPage(storeCrew))),
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: _menuIndex,
        builder: (context, index, child) {
          return NavigationBarTheme(
            data: Theme.of(context).navigationBarTheme.copyWith(
                  backgroundColor: Colors.white,
                  surfaceTintColor: Colors.white,
                  elevation: 4,
                  indicatorColor: ColorConstants.avatarColor,
                  indicatorShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.w),
                  ),
                ),
            child: Material(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.w),
                  topRight: Radius.circular(30.w),
                ),
                child: NavigationBar(
                  backgroundColor: Colors.white,
                  selectedIndex: _menuIndex.value,
                  onDestinationSelected: (index) {
                    _menuIndex.value = index;
                  },
                  destinations: [
                    NavigationDestination(
                      icon: Icon(
                        Iconsax.home,
                        color: ColorConstants.fontColor,
                      ),
                      label: "Home",
                      selectedIcon: Icon(
                        Iconsax.home,
                        color: ColorConstants.iconColor,
                      ),
                    ),
                    /*
                    NavigationDestination(
                      icon: Icon(
                        Iconsax.chart_2,
                        color: ColorConstants.fontColor,
                      ),
                      label: "Report",
                      selectedIcon: Icon(
                        Iconsax.chart_2,
                        color: ColorConstants.iconColor,
                      ),
                    ),
                    */
                    NavigationDestination(
                      icon: Icon(
                        Iconsax.profile_circle,
                        color: ColorConstants.fontColor,
                      ),
                      label: "Profile",
                      selectedIcon: Icon(
                        Iconsax.profile_circle,
                        color: ColorConstants.iconColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget resultPage(bool? storeCrew) {
    return ValueListenableBuilder(
      valueListenable: _menuIndex,
      builder: (context, index, child) {
        if (index == 1) {
          return const ProfilePage();
        }

        if (storeCrew == null) {
          return const SizedBox.shrink();
        }

        if (storeCrew) {
          return const MenuPage();
        }

        return const StorePage();
      },
    );
  }

  Future<bool> onWillPop(BuildContext context) async {
    DateTime now = DateTime.now();

    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) >
            const Duration(milliseconds: 2000)) {
      currentBackPressTime = now;
      showSnackbarMessage(context,
          message: "press back button again to exit the app");
      return Future.value(false);
    }
    return Future.value(true);
  }
}
