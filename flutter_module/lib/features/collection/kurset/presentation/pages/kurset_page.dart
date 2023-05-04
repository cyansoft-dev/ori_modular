import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/di/injector.dart';
import '../../../../store/domain/entities/store.dart';
import '../../domain/entities/kurset.dart';
import '/core/constants/color_constants.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../../core/appstate/app_state.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../../../common/presentation/pages/app_state_sliver.dart';
import '../components/kurset_header_delegate.dart';
import '../cubit/kurset_cubit.dart';

class KursetPage extends StatefulWidget {
  const KursetPage({Key? key, required this.store}) : super(key: key);
  final Store store;
  @override
  State<KursetPage> createState() => _KursetPageState();
}

class _KursetPageState extends State<KursetPage>
    with SingleTickerProviderStateMixin {
  ValueNotifier<bool> loadingNotifier = ValueNotifier(false);
  late AnimationController _messageC;

  @override
  void initState() {
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
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
    return BlocProvider<KursetCubit>(
      create: (context) =>
          locator.get<KursetCubit>()..getKurset(widget.store.kodetoko!),
      child: Builder(builder: (context) {
        return Scaffold(
          body: BlocConsumer<KursetCubit, AppState<List<Kurset>>>(
            listener: (context, state) async {
              loadingNotifier.value = state.isLoading;

              if (state.isError) {
                return showMessage(
                  context,
                  state.error?.errMessage ?? "Gagal  ambil data kurang setor.",
                  controller: _messageC,
                  type: MessageType.error,
                );
              }
            },
            builder: (context, state) {
              return CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                      pinned: true, delegate: KursetHeaderDelegate()),
                  
                  AppStateSliver(
                    state: state,
                    onData: (data) {
                      if (data.isEmpty) {
                        return SliverFillRemaining(
                          hasScrollBody: false,
                          child: Padding(
                            padding: EdgeInsets.all(20.w),
                            child: Center(
                                child: Text(
                              "Data kurang setor kosong.",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            )),
                          ),
                        );
                      }

                      return SliverPadding(
                        padding: EdgeInsets.only(
                            left: 20.w, right: 20.w, bottom: 20.h, top: 5.h),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                                child: Material(
                                  elevation: 1,
                                  color: Colors.white,
                                  shadowColor: ColorConstants.shadowColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(
                                              10.w)),
                                  child: Theme(
                                    data: Theme.of(context).copyWith(
                                        dividerColor: Colors.transparent),
                                    child: ExpansionTile(
                                      initiallyExpanded: true,
                                      iconColor: ColorConstants.fontColor,
                                      collapsedIconColor:
                                          ColorConstants.fontColor,
                                      title: Text(
                                        "TANGGAL SALES",
                                        style: GoogleFonts.nunito(
                                            color: ColorConstants.fontColor,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        data[index].tanggal == null ? "-" : DateFormat("dd MMM yyyy").format(data[index].tanggal!),
                                        style: GoogleFonts.nunito(
                                            color: Colors.grey.shade600,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      childrenPadding: EdgeInsets.only(
                                          left: 15.w,
                                          right: 15.w,
                                          bottom: 20.w),
                                      expandedCrossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      expandedAlignment: Alignment.topLeft,
                                      children: [
                                        Text(
                                          "Nominal : ${data[index].nominal.toCurrencyFormat}",
                                          style: TextStyle(
                                              color: ColorConstants.fontColor,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "${data[index].keterangan?.capitalize}",
                                          style: TextStyle(
                                              color: ColorConstants.fontColor,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            childCount: data.length,
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
      }),
    );
  }
}
