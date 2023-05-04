import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/appstate/app_state.dart';
import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/di/injector.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../../transaction/presentation/components/detail_header_delegate.dart';
import '../../domain/entities/detail_tracking.dart';
import '../../domain/entities/tracking.dart';
import '../components/tracking_progress.dart';
import '../components/tracking_timeline.dart';
import '../cubit/detail_tracking_cubit.dart';

class DetailTrackingPage extends StatefulWidget {
  const DetailTrackingPage({super.key, required this.dataTracking});

  final DataTracking dataTracking;

  @override
  State<DetailTrackingPage> createState() => _DetailTrackingPageState();
}

class _DetailTrackingPageState extends State<DetailTrackingPage>
    with SingleTickerProviderStateMixin {
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
    return BlocProvider<DetailTrackingCubit>(
      create: (context) => locator.get<DetailTrackingCubit>()
        ..getDetailTracking(widget.dataTracking.idDelivery!),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                    pinned: true, delegate: DetailHeaderDelegate()),
                BlocConsumer<DetailTrackingCubit, AppState<DetailTracking>>(
                  listener: (context, state) {
                    if (state.isError) {
                      showMessage(
                        context,
                        "${state.error?.errMessage}",
                        controller: _messageC,
                        type: MessageType.error,
                      );
                    }
                  },
                  builder: (context, state) {
                    return state.maybeWhen(orElse: () {
                      return const SliverToBoxAdapter();
                    }, loading: () {
                      return SliverFillRemaining(
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 3.w,
                            color: ColorConstants.backgroundColor,
                          ),
                        ),
                      );
                    }, data: (detailData) {
                      return SliverList(
                        delegate: SliverChildListDelegate([
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20.w,
                                right: 20.w,
                                top: 15.h,
                                bottom: 15.h),
                            child: TrackingProgress(
                                details: state.data!.detailTracking),
                          ),
                          Builder(
                            builder: (context) {
                              final details = detailData.detailTracking ??
                                  <DetailDataTracking>[];

                              return Padding(
                                padding: EdgeInsets.only(
                                    left: 20.w, right: 20.w, bottom: 20.h),
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                      dividerColor: Colors.transparent),
                                  child: Material(
                                    elevation: 1,
                                    shadowColor: ColorConstants.shadowColor,
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.w),
                                    child: ExpansionTile(
                                      initiallyExpanded: true,
                                      childrenPadding: EdgeInsets.only(
                                          right: 20.w, bottom: 20.h, top: 5.h),
                                      title: Text(
                                        "Detail pelaporan",
                                        style: GoogleFonts.nunito(
                                          color: ColorConstants.fontColor,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      iconColor: ColorConstants.fontColor,
                                      collapsedIconColor:
                                          ColorConstants.fontColor,
                                      children: details.map((e) {
                                        final index = details.indexOf(e);
                                        return TrackingTimeline(
                                          index: index,
                                          length: details.length,
                                          isFirst: index == 0,
                                          isLast: index == details.length - 1,
                                          tracking: details[index],
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        ]),
                      );
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
