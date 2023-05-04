import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '/core/constants/color_constants.dart';
import '/core/constants/value_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '/core/widget/gradient_icon.dart';
import '../../../../common/presentation/components/submenu_header_delegate.dart';
import '../../../../common/presentation/cubit/selected_submenu_cubit.dart';
import '../../../../menu/domain/entities/menu.dart';
import '../../../../menu/presentation/cubit/menu_cubit.dart';
import '../../../../store/domain/entities/store.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key, required this.store});
  final Store store;

  @override
  Widget build(BuildContext context) {
    final collectionMenu =
        context.select((MenuCubit cubit) => cubit.state.data?.menuCollection) ??
            <MenuData>[];

    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverPersistentHeader(delegate: SubmenuHeaderDelegate()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, bottom: 5.h, top: 5.h),
              child: Text(
                "Menu Collection",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                child: Material(
                  elevation: 1,
                  borderRadius:
                      BorderRadius.circular(ValueConstants.borderRadius),
                  color: Colors.white,
                  shadowColor: ColorConstants.shadowColor,
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(ValueConstants.borderRadius),
                    onTap: store.kodetoko == null
                        ? null
                        : () {
                            context
                              ..read<SelectedSubmenuCubit>()
                                  .setMenu(collectionMenu[index])
                              ..push(collectionMenu[index].path!, extra: store);
                          },
                    child: Padding(
                      // height: 120.h,
                      padding: EdgeInsets.all(15.h),
                      child: Row(
                        children: [
                          Container(
                            width: 52.w,
                            height: 52.w,
                            padding: EdgeInsets.all(5.w),
                            decoration: BoxDecoration(
                              color: ColorConstants.avatarColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15.w),
                            ),
                            child: Hero(
                              tag: "${collectionMenu[index].title}",
                              child: GradientIcon(
                                Iconsax.empty_wallet,
                                // color: ColorConstants.iconColor,
                                gradient: LinearGradient(
                                  colors: ColorConstants.iconColors,
                                ),
                                size: 36.sp,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${collectionMenu[index].title}",
                                  style: GoogleFonts.nunito(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  "${collectionMenu[index].subtitle}",
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
            }, childCount: collectionMenu.length),
          ),
        ],
      ),
    );
  }
}
