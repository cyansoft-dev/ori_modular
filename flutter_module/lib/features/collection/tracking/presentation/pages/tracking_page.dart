import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/value_constants.dart';
import '../../../../store/domain/entities/store.dart';
import '/core/constants/color_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../../core/appstate/app_state.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../routing/app_routing.dart';
import '../../../../common/presentation/components/button_widget.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../../../common/presentation/pages/app_state_sliver.dart';
import '../../domain/entities/tracking.dart';
import '../components/tracking_header_delegate.dart';
import '../cubit/tracking_cubit.dart';

class TrackingPage extends StatefulWidget {
  const TrackingPage({Key? key, required this.store}) : super(key: key);
  final Store store;

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage>
    with SingleTickerProviderStateMixin {
  ValueNotifier<bool> loadingNotifier = ValueNotifier(false);
  late AnimationController _messageC;

  @override
  void initState() {
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
    context.read<TrackingCubit>().getTracking(widget.store.kodetoko!);
    super.initState();
  }

  @override
  void dispose() {
    _messageC.dispose();
    loadingNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TrackingCubit, AppState<Tracking>>(
        listener: (context, state) async {
          loadingNotifier.value = state.isLoading;

          if (state.isError) {
            return showMessage(
              context,
              state.error?.errMessage ?? "Gagal  ambil data tracking.",
              controller: _messageC,
              type: MessageType.error,
            );
          }
        },
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                  pinned: true, delegate: TrackingHeaderDelegate()),
              AppStateSliver(
                state: state,
                onData: (trackData) {
                  final tracking = trackData.listTracking ?? <DataTracking>[];

                  if (tracking.isEmpty) {
                    return SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                          child: Text(
                        "Data tracking collection kosong.",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      )),
                    );
                  }

                  return SliverPadding(
                    padding: EdgeInsets.all(20.w),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final nominal = tracking[index].salesDetail?.fold(
                              0.0,
                              (prev, next) =>
                                  prev + (next.nominal ?? 0.0).toDouble());

                          final lampiran = tracking[index].salesDetail?.fold(
                              0, (prev, next) => prev + (next.lampiran ?? 0));

                          final saleDates = tracking[index]
                              .salesDetail
                              ?.map((e) =>
                                  DateFormat("dd-Mm-yyyy").format(e.tanggal!))
                              .toSet();

                          return Padding(
                            padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                            child: Material(
                              elevation: 1,
                              color: Colors.white,
                              shadowColor: ColorConstants.shadowColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10.w)),
                              child: Theme(
                                data: Theme.of(context)
                                    .copyWith(dividerColor: Colors.transparent),
                                child: ExpansionTile(
                                  title: Text(
                                    tracking[index].delivery!,
                                    style: GoogleFonts.nunito(
                                      color: ColorConstants.fontColor,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  subtitle: Text(
                                    DateFormat("dd MMM yyyy")
                                        .format(tracking[index].tglPosting!),
                                    style: TextStyle(
                                      color: ColorConstants.fontColor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  trailing: Text(
                                    (tracking[index]
                                        .status
                                        .toString()
                                        .capitalizeSentence),
                                    style: TextStyle(
                                      color: ColorConstants.fontColor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  initiallyExpanded: true,
                                  childrenPadding: EdgeInsets.fromLTRB(
                                      20.w, 5.h, 20.w, 20.w),
                                  children: [
                                    Flex(
                                      direction: Axis.horizontal,
                                      children: [
                                        const Text("• Sales yg dikirim"),
                                        const Spacer(),
                                        Text("${saleDates?.length ?? 0} Hari")
                                      ],
                                    ),
                                    SizedBox(height: 5.h),
                                    Flex(
                                      direction: Axis.horizontal,
                                      children: [
                                        const Text("• Jumlah lampiran"),
                                        const Spacer(),
                                        Text("${lampiran ?? 0}")
                                      ],
                                    ),
                                    SizedBox(height: 5.h),
                                    Flex(
                                      direction: Axis.horizontal,
                                      children: [
                                        const Text("• Total setoran"),
                                        const Spacer(),
                                        Text(
                                            "Rp ${NumberFormat("#,##0", "id_ID").format(nominal)}")
                                      ],
                                    ),
                                    SizedBox(height: 20.h),
                                    Flex(
                                      direction: Axis.horizontal,
                                      children: [
                                        const Spacer(),
                                        ButtonWidget(
                                          size: Size(100.w, 46.h),
                                          color: ColorConstants.viewColor,
                                          onPressed: () {
                                            context.pushNamed(
                                                AppRoute
                                                    .collectionTrackingDetail
                                                    .name,
                                                extra: tracking[index]);
                                          },
                                          label: Row(
                                            children: [
                                              const Icon(Icons.location_on),
                                              SizedBox(width: 4.w),
                                              const Text(
                                                "Detail",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        childCount: tracking.length,
                      ),
                    ),
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
