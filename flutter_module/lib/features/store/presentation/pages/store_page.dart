import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '/core/constants/color_constants.dart';
import '/core/utils/app_haptic.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '/routing/app_routing.dart';
import '../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../common/presentation/pages/app_state_sliver.dart';
import '../../domain/entities/store.dart';
import '../components/store_header_delegate.dart';
import '../cubit/store_cubit.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    double expandedHeight = 396.xh;
    double collapseHeight = 256.xh;
    final state = context.select((StoreCubit cubit) => cubit.state);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<StoreCubit>().getStore();
        },
        child: CustomScrollView(slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: StoreHeaderDelegate(
                collapseHeight: collapseHeight, expandedHeight: expandedHeight),
          ),
          if (state.isSuccess)
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 20.w, bottom: 5.h, top: 5.h),
                child: Text(
                  "List Toko",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ),
            ),
          AppStateSliver<ListStore>(
            state: state,
            onData: (ListStore data) {
              final stores = data.stores ?? <Store>[];
              return SliverPadding(
                padding: EdgeInsets.all(20.w),
                sliver: SliverGrid.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.w,
                    mainAxisSpacing: 15.w,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    final store = stores[index];
                    return Material(
                      elevation: 1,
                      borderRadius: BorderRadius.circular(20.h),
                      color: Colors.white,
                      shadowColor: ColorConstants.shadowColor,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.h),
                        onTap: () {
                          AppHaptics.buttonPress();
                          FocusManager.instance.primaryFocus?.unfocus();
                          context
                            ..read<SelectedStoreCubit>().setStore(store)
                            ..pushNamed(AppRoute.menu.name, extra: state.data);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 65.w,
                                height: 65.w,
                                padding: EdgeInsets.all(10.w),
                                decoration: BoxDecoration(
                                  color: ColorConstants.avatarColor,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(15.w),
                                ),
                                child: Center(
                                  child: Hero(
                                    tag: "${store.kodetoko}",
                                    child: Icon(
                                      Iconsax.building_4,
                                      color: ColorConstants.iconColor,
                                      size: 42.sp,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.h),
                              Text(
                                "${store.kodetoko}",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "${store.namatoko}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: stores.length,
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
