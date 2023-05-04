import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '/core/constants/color_constants.dart';
import '/core/constants/value_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../common/presentation/cubit/selected_menu_cubit.dart';
import '../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../common/presentation/pages/app_state_sliver.dart';
import '../../../login/presentation/cubit/auth_cubit.dart';
import '../../../store/presentation/components/store_header_delegate.dart';
import '../../../store/presentation/cubit/store_cubit.dart';
import '../../domain/entities/menu.dart';
import '../components/menu_header_delegate.dart';
import '../cubit/menu_cubit.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  double expandedHeight = 396.xh;
  double collapseHeight = 256.xh;
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
    final menuState = context.watch<MenuCubit>().state;

    final storeState = context.watch<StoreCubit>().state;

    final isStoreCrew =
        context.select((AuthCubit user) => user.state.data?.isStoreCrew) ??
            false;

    final selectedStore =
        context.select((SelectedStoreCubit cubit) => cubit.state);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          if (storeState.data?.stores == null ||
              storeState.data!.stores!.isEmpty) {
            context.read<StoreCubit>().getStore();
          }
          context.read<MenuCubit>().getMenu();
        },
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: isStoreCrew
                  ? StoreHeaderDelegate(
                      isStoreCrew: isStoreCrew,
                      collapseHeight: collapseHeight,
                      expandedHeight: expandedHeight)
                  : MenuHeaderDelegate(
                      collapseHeight: collapseHeight,
                      expandedHeight: expandedHeight),
            ),
            if (storeState.isLoading || menuState.isLoading) ...[
              SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 3.w,
                    color: ColorConstants.backgroundColor,
                  ),
                ),
              ),
            ] else if (menuState.isSuccess) ...[
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, bottom: 5.h, top: 5.h),
                  child: Text(
                    "List Menu",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
              ),
              AppStateSliver<Menu>(
                state: menuState,
                onData: (menuData) {
                  final mainMenu = menuData.menuMain ?? <MenuData>[];
                  if (mainMenu.isEmpty) {
                    return SliverFillRemaining(
                      hasScrollBody: false,
                      child: Padding(
                        padding: EdgeInsets.all(20.w),
                        child: Center(
                          child: Text(
                            "Tarik halaman ke bawah untuk refresh",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    );
                  }

                  return SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 5.h),
                        child: Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(
                              ValueConstants.borderRadius),
                          color: Colors.white,
                          shadowColor: ColorConstants.shadowColor,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(
                                ValueConstants.borderRadius),
                            onTap: () {
                              FocusManager.instance.primaryFocus?.unfocus();

                              String path = mainMenu[index].path ?? "/";
                              context
                                ..read<SelectedMenuCubit>()
                                    .setMenu(mainMenu[index])
                                ..push(path, extra: selectedStore);
                            },
                            child: Padding(
                              padding: EdgeInsets.all(15.h),
                              child: Row(
                                children: [
                                  Container(
                                    width: 52.w,
                                    height: 52.w,
                                    padding: EdgeInsets.all(10.w),
                                    decoration: BoxDecoration(
                                      color: ColorConstants.avatarColor,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(15.w),
                                    ),
                                    child: Hero(
                                      tag: "${mainMenu[index].title}",
                                      child: Icon(
                                        Iconsax.menu_board,
                                        color: ColorConstants.iconColor,
                                        size: 36.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Flexible(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${mainMenu[index].title}",
                                          style: GoogleFonts.nunito(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(width: 4.h),
                                        Text(
                                          "${mainMenu[index].subtitle}",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            overflow: TextOverflow.ellipsis,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }, childCount: mainMenu.length),
                  );
                },
              ),
            ]
          ],
        ),
      ),
    );
  }
}
