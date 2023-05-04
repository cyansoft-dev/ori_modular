import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../core/constants/value_constants.dart';
import '../../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../../../routing/app_routing.dart';
import '../../../../proses/data/model/summary_audit_dto.dart';
import '../../../../proses/presentation/cubit/summary_audit_cubit.dart';
import '../../components/grid_menu_widget.dart';

class VerifikasiMinusPage extends StatefulWidget {
  const VerifikasiMinusPage({super.key});

  @override
  State<VerifikasiMinusPage> createState() => _VerifikasiMinusPageState();
}

class _VerifikasiMinusPageState extends State<VerifikasiMinusPage>
    with TickerProviderStateMixin {
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
    return Builder(builder: (context) {
      return CustomScrollView(
        slivers: [
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, bottom: 5.h, top: 5.h),
              child: Text(
                "Penyebab Minus",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(20.w),
            sliver: SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.w,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return buildBody(context)[index];
              },
              itemCount: buildBody(context).length,
            ),
          )
        ],
      );
    });
  }

  List<Widget> buildBody(BuildContext context) {
    return <Widget>[
      GridMenuWidget(
        icon: Iconsax.link,
        title: "FRAUD",
        subtitle: "Form minus karena fraud",
        onTap: () {
          context.pushNamed(AppRoute.kasMinusFraud.name);
        },
      ),
      GridMenuWidget(
        icon: Iconsax.money_send,
        title: "RRAK",
        subtitle: "Form minus karena RRAK / Non RRAK",
        onTap: () {
          context.pushNamed(AppRoute.kasMinusRrak.name);
        },
      ),
      GridMenuWidget(
        icon: Iconsax.moneys,
        title: "VARIANCE",
        subtitle: "Form minus karena variance plus",
        onTap: () {
          context.pushNamed(AppRoute.kasMinusVarian.name);
        },
      ),
      GridMenuWidget(
        icon: Iconsax.stickynote,
        title: "OTHER",
        subtitle: "Form minus karena penyebab lain",
        onTap: () {
          context.pushNamed(AppRoute.kasMinusOther.name);
        },
      )
    ];
  }

  Future<bool> onWillPop(BuildContext context, double value) async {
    if (value < 0) {}

    context.read<SummaryAuditCubit>().updateStatus(AuditStatus.review);
    return true;
  }
}
