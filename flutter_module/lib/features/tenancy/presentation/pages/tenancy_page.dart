import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../../../store/domain/entities/store.dart';
import '../../../common/presentation/cubit/selected_submenu_cubit.dart';

import '../../../../routing/app_routing.dart';
import '../../../menu/presentation/cubit/menu_cubit.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/value_constants.dart';
import '../../../common/presentation/components/submenu_header_delegate.dart';
import '../../../menu/domain/entities/menu.dart';
import '/features/tenancy/presentation/cubit/master_tenant_cubit.dart';

enum TenantStatus {
  registered("TERDAFTAR"),
  ilegal("TIDAK TERDAFTAR");

  final String status;
  const TenantStatus(this.status);

  @override
  String toString() => status;
}

class TenancyPage extends StatelessWidget {
  const TenancyPage({super.key, required this.store});
  final Store store;

  @override
  Widget build(BuildContext context) {
    final tenantMenu =
        context.select((MenuCubit cubit) => cubit.state.data?.menuTenancy) ??
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
                "Menu Tenant",
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
                            if (tenantMenu[index].path! ==
                                AppRoute.tenantCollecting.path) {
                              context
                                  .read<MasterTenantCubit>()
                                  .get(store.kodetoko!);
                            }

                            context
                              ..read<SelectedSubmenuCubit>()
                                  .setMenu(tenantMenu[index])
                              ..push(tenantMenu[index].path!);
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
                              tag: "${tenantMenu[index].title}",
                              child: Icon(
                                Iconsax.task_square,
                                color: ColorConstants.iconColor,
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
                                  "${tenantMenu[index].title}",
                                  style: GoogleFonts.nunito(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  "${tenantMenu[index].subtitle}",
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
            }, childCount: tenantMenu.length),
          ),
        ],
      ),
    );
  }
}
