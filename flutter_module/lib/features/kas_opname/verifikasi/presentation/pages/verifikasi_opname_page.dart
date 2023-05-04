import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../../core/widget/gradient_icon.dart';
import '../../../proses/domain/entities/summary_audit.dart';
import '../../../proses/presentation/cubit/summary_audit_cubit.dart';
import '../components/review_opname_header_delegate.dart';
import 'minus/verifikasi_minus_page.dart';
import 'plus/verifikasi_plus_page.dart';

class VerifikasiOpnamePage extends StatefulWidget {
  const VerifikasiOpnamePage({super.key});

  @override
  State<VerifikasiOpnamePage> createState() => _VerifikasiOpnamePageState();
}

class _VerifikasiOpnamePageState extends State<VerifikasiOpnamePage>
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
    final summaryAudit =
        context.select((SummaryAuditCubit cubit) => cubit.state.data) ??
            const SummaryAudit();

    return Scaffold(
      extendBody: true,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverPersistentHeader(
              pinned: true,
              delegate: ReviewOpnameHeaderDelegate(
                selisih: summaryAudit.summary,
                adjustment: summaryAudit.adjust,
              ),
            ),
          ),
        ],
        body: buildBody(summaryAudit.summary),
      ),
    );
  }

  Widget buildBody(double summary) {
    if (summary < 0) {
      return const VerifikasiMinusPage();
    }

    if (summary > 0) {
      return const VerifikasiPlusPage();
    }

    return buildBalancePage();
  }

  Widget buildBalancePage() {
    return Builder(builder: (context) {
      return CustomScrollView(slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        SliverFillRemaining(
          fillOverscroll: false,
          child: Padding(
            padding: EdgeInsets.only(
                left: 20.w, right: 20.w, top: 5.h, bottom: 35.h),
            child: Material(
                elevation: 1,
                color: Colors.white,
                shadowColor: ColorConstants.shadowColor,
                borderRadius:
                    BorderRadius.circular(ValueConstants.borderRadius),
                child: Padding(
                  padding: EdgeInsets.all(30.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GradientIcon(
                          Iconsax.cards,
                          size: 72.sp,
                          gradient:
                              LinearGradient(colors: ColorConstants.iconColors),
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          "Hasil perhitungan SO KAS sudah balance, silahkan melanjutkan proses validasi data pada menu Validasi SO",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(fontSize: 20.sp),
                        ),
                      ]),
                )),
          ),
        )
      ]);
    });
  }
}
