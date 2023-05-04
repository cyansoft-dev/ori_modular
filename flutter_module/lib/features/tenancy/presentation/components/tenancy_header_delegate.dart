import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import '../../../common/presentation/cubit/selected_store_cubit.dart';

import '../../../../core/appstate/app_state.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../routing/app_routing.dart';
import '../../../common/presentation/components/app_bar_widget.dart';
import '../../../store/domain/entities/store.dart';
import '../../domain/entities/data_tenant.dart';
import '../cubit/transaction_tenant_cubit.dart';

class TenancyHeaderDelegate extends SliverPersistentHeaderDelegate {
  TenancyHeaderDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    int counter = 0;
    return BlocBuilder<SelectedStoreCubit, Store>(
      builder: (context, store) => Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstants.backgroundColor,
                gradient: LinearGradient(
                  colors: ColorConstants.gradientColors,
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
                // child: Image.asset(
                //   ImageConstants.banner,
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
          ),
          Positioned(
            top: 30.h,
            left: 20.w,
            right: 20.w,
            child: AppBarWidget(
              action: GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoute.tenantCart.name);
                },
                child: Container(
                  height: 42.w,
                  width: 42.w,
                  decoration: BoxDecoration(
                      color: ColorConstants.shadowColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10.w)),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Center(
                        child: Icon(
                          Iconsax.shopping_bag,
                          color: Colors.white,
                          size: 26.sp,
                        ),
                      ),
                      Positioned(
                        top: -5.w,
                        right: -5.w,
                        child: BlocBuilder<TransactionTenantCubit,
                                AppState<List<DataTenant>>>(
                            builder: (context, state) {
                          if (state.data != null) {
                            counter = state.data
                                    ?.where((e) => e.kdtk == store.kodetoko)
                                    .length ??
                                0;
                          }

                          if (counter == 0) {
                            return const SizedBox.shrink();
                          }
                          return Container(
                            height: 25.w,
                            width: 25.w,
                            padding: EdgeInsets.all(3.w),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConstants.badgeColor),
                            child: Center(
                              child: Text(
                                "$counter",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstants.fontColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -1.h,
            left: 0,
            right: 0,
            child: Container(
              height: 31.h,
              decoration: BoxDecoration(
                color: ColorConstants.canvasColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.w),
                    topRight: Radius.circular(30.w)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 180.xh;

  @override
  double get minExtent => 180.xh;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
