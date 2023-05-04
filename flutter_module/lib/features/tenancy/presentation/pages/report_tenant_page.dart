import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/value_constants.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../common/presentation/cubit/selected_store_cubit.dart';
import '../components/tenancy_header_delegate.dart';

class ReportTenantPage extends StatefulWidget {
  const ReportTenantPage({Key? key}) : super(key: key);

  @override
  State<ReportTenantPage> createState() => _ReportTenantPageState();
}

class _ReportTenantPageState extends State<ReportTenantPage>
    with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
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
    final store =
        context.select((SelectedStoreCubit cubit) => cubit.state.kodetoko);

    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
            delegate: TenancyHeaderDelegate(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 20.w, right: 20.w, top: 5.h, bottom: 35.h),
              child: Material(
                elevation: 1.0,
                borderRadius: BorderRadius.circular(20.w),
                shadowColor: ColorConstants.shadowColor,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(30.w),
                  child: Form(
                    key: formKey,
                    child: Container(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
