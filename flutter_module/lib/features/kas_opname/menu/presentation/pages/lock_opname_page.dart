import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/di/injector.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../common/presentation/components/submenu_header_delegate.dart';
import '../../../../common/presentation/pages/app_state_sliver.dart';
import '../../../../menu/domain/entities/menu.dart';
import '../../../../menu/presentation/cubit/menu_cubit.dart';
import '../../../../store/domain/entities/store.dart';
import '../../../proses/data/model/summary_audit_dto.dart';
import '../../../proses/domain/entities/summary_audit.dart';
import '../../../proses/presentation/cubit/summary_audit_cubit.dart';
import '../components/lock_view_widget.dart';
import '../components/menu_opname_widget.dart';
import '../cubit/check_collection_cubit.dart';
import '../cubit/lock_sales_cubit.dart';
import '../cubit/scan_barcode_cubit.dart';

class LockOpnamePage extends StatefulWidget {
  const LockOpnamePage({Key? key, required this.store}) : super(key: key);
  final Store store;

  @override
  State<LockOpnamePage> createState() => _LockOpnamePageState();
}

class _LockOpnamePageState extends State<LockOpnamePage>
    with SingleTickerProviderStateMixin {
  final now = DateTime.now();
  late AnimationController messageC;

  @override
  void initState() {
    super.initState();
    messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
    context.read<SummaryAuditCubit>().getByStore(widget.store.kodetoko!);
  }

  @override
  void dispose() {
    messageC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final menus =
        context.select((MenuCubit cubit) => cubit.state.data?.menuKasOpname) ??
            <MenuData>[];

    final summaryState = context.watch<SummaryAuditCubit>().state;

    return MultiBlocProvider(
      providers: [
        BlocProvider<LockSalesCubit>(
          create: (context) => locator.get<LockSalesCubit>(),
        ),
        BlocProvider<CheckCollectionCubit>(
          create: (context) => locator.get<CheckCollectionCubit>(),
        ),
        BlocProvider<ScanBarcodeCubit>(
          create: (context) => locator.get<ScanBarcodeCubit>(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: SubmenuHeaderDelegate(),
                ),
                if (summaryState.isSuccess &&
                    summaryState.data != null &&
                    summaryState.data!.status.index >= AuditStatus.locked.index)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, bottom: 5.h, top: 5.h),
                      child: Text(
                        "Menu SO Kas",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                AppStateSliver<SummaryAudit>(
                  state: summaryState,
                  onData: (data) {
                    if (isUnlocked(data)) {
                      return MenuOpnameWidget(menu: menus, store: data.kdtk!);
                    }
                    return const LockViewWidget();
                  },
                  onError: (err) {
                    return const LockViewWidget();
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }

  bool isUnlocked(SummaryAudit data) {
    return data.kdtk == widget.store.kodetoko &&
        data.tanggal.isSame(now) &&
        data.status.index >= AuditStatus.locked.index;
  }
}
