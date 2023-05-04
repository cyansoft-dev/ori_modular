import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../core/appstate/app_state.dart';
import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/di/injector.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../core/utils/validator.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../collection/transaction/presentation/components/page_header_delegate.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../../../../common/presentation/components/button_widget.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/image_picker_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../../splash/domain/entities/setting_data.dart';
import '../../../../splash/presentation/cubit/setting_cubit.dart';
import '../../../../store/domain/entities/store.dart';
import '../../../proses/data/model/summary_audit_dto.dart';
import '../../../proses/domain/entities/summary_audit.dart';
import '../../../proses/presentation/cubit/summary_audit_cubit.dart';
import '../../domain/usecases/validasi_opname_usecase.dart';
import '../cubit/validate_opname_cubit.dart';

class ValidateOpnamePage extends StatefulWidget {
  const ValidateOpnamePage({Key? key}) : super(key: key);

  @override
  State<ValidateOpnamePage> createState() => _ValidateOpnamePageState();
}

class _ValidateOpnamePageState extends State<ValidateOpnamePage>
    with SingleTickerProviderStateMixin {
  final _globalKey = GlobalKey();
  final _formKey = GlobalKey<FormState>();
  final ValueNotifier<File?> _image = ValueNotifier(null);
  final ValueNotifier<bool> _saveNotifier = ValueNotifier(false);
  late AnimationController _messageC;

  @override
  void initState() {
    super.initState();
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
  }

  @override
  void dispose() {
    _image.dispose();
    _messageC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedStore =
        context.select((SelectedStoreCubit cubit) => cubit.state);

    final summaryAudit =
        context.select((SummaryAuditCubit cubit) => cubit.state.data);

    final setting = context.select((SettingCubit cubit) => cubit.state.data);

    return BlocProvider<ValidateOpnameCubit>(
      create: (context) => locator.get<ValidateOpnameCubit>(),
      child: Scaffold(
        body: Builder(builder: (context) {
          return BlocListener<ValidateOpnameCubit, AppState<BaseResponse>>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () => null,
                  data: (data) {
                    showMessage(
                      context,
                      data.message ?? "Upload data berhasil",
                      type: MessageType.information,
                      controller: _messageC,
                      onClose: () {
                        _formKey.currentState!.reset();
                        context
                          ..read<SummaryAuditCubit>()
                              .updateStatus(AuditStatus.completed)
                          ..pop();
                      },
                    );
                  },
                  error: (err) {
                    showMessage(context, err.errMessage,
                        type: MessageType.error, controller: _messageC);
                  });
            },
            child: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                    pinned: true,
                    delegate: PageHeaderDelegate(
                        showActionButton: false,
                        forceActionButton: false,
                        showPopButton: true)),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 20.w, right: 20.w, top: 5.h, bottom: 35.h),
                    child: Material(
                      elevation: 1,
                      color: Colors.white,
                      shadowColor: ColorConstants.shadowColor,
                      borderRadius:
                          BorderRadius.circular(ValueConstants.borderRadius),
                      child: _buildBody(
                          context, summaryAudit!, selectedStore, setting),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget _buildBody(BuildContext context, SummaryAudit audit, Store? store,
      SettingData? setting) {
    final dateFormat = DateFormat("dd-MM-yyyy");

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: RepaintBoundary(
                key: _globalKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "HASIL SO \nDANA SALES, RRAK & KAS TOKO",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "${store?.namatoko?.capitalizeSentence}",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Divider(color: ColorConstants.borderColor, thickness: 1.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Tanggal SO : ${dateFormat.format(DateTime.now())}",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                    Divider(color: ColorConstants.borderColor, thickness: 1.0),
                    SizedBox(height: 4.h),
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        Text(
                          "Total Selisih SO",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          audit.summary.toCurrencyFormat,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Kesimpulan :",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    ...generateData(audit),
                    SizedBox(height: 4.h),
                    Divider(color: ColorConstants.borderColor, thickness: 1.0),
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        const Spacer(),
                        Text(
                          summary(audit.summary, audit.adjust).toCurrencyFormat,
                          textAlign: TextAlign.end,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          BlocBuilder<ValidateOpnameCubit, AppState<BaseResponse>>(
            builder: (context, state) => ButtonWidget(
              elevation: 0,
              isLoading: state.isLoading,
              color: ColorConstants.backgroundColor,
              onPressed: () {
                showValidateModal(
                  context,
                  store: store,
                  imageQuality: setting?.imageQuality,
                );
              },
              size: Size.fromHeight(56.h),
              label: const Text(
                "Validasi",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          ValueListenableBuilder<bool>(
            valueListenable: _saveNotifier,
            builder: (context, value, _) => ButtonWidget(
              elevation: 0,
              color: Colors.white,
              side: BorderSide(
                width: 1.w,
                color: ColorConstants.backgroundColor,
              ),
              size: Size.fromHeight(56.h),
              label: Text(
                "Simpan",
                style: TextStyle(color: ColorConstants.backgroundColor),
              ),
              onPressed: () async {
                _saveNotifier.value = true;
                final rawImg = await _capturePng();
                final externalDirectory = await getExternalStorageDirectory();
                final dir = await Directory("${externalDirectory?.path}/ori")
                    .create(recursive: true);
                final file = File(
                    "${dir.path}/REPORT_SOKAS_${DateFormat("ddMMyyyyHHss").format(DateTime.now())}.png");

                if (rawImg != null) {
                  file.writeAsBytes(rawImg.toList()).then((value) => showMessage(
                      context, "Hasil SO berhasil disimpan.",
                      controller: _messageC, type: MessageType.information));
                }
                _saveNotifier.value = false;
              },
            ),
          ),
        ],
      ),
    );
  }

  double summary(double summary, List<AdjustmentAudit>? adjust) {
    if (adjust != null && adjust.isNotEmpty) {
      final adjuster = adjust.fold(0.0, (value, e) => value + e.nominal);
      if (summary < 0) {
        final diffValue = summary + adjuster;
        return diffValue;
      }

      if (summary > 0) {
        final diffValue = summary - adjuster;
        return diffValue;
      }
    }

    return 0.0;
  }

  Future<void> showValidateModal(BuildContext context,
      {Store? store, int? imageQuality}) async {
    File? image;
    return showModalBottomSheet(
      context: context,
      transitionAnimationController: _messageC,
      builder: (context) {
        return Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.w, 80.h, 20.w, 40.h),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ImagePickerWidget(
                          initialImage: image,
                          quality: imageQuality,
                          label: "Photo Mobil",
                          validator: RequiredValidator(
                              errorMessage: "Foto tidak boleh kosong"),
                          onCapture: (file) {
                            image = file;
                          },
                        ),
                      ),
                      SizedBox(height: 24.h),
                      ButtonWidget(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ValidateParams params = ValidateParams(
                                  kdtk: store!.kodetoko!, image: _image.value!);

                              context
                                  .read<ValidateOpnameCubit>()
                                  .upload(params);
                              Navigator.pop(context);
                            }
                          },
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.cloud_upload),
                              SizedBox(width: 10.w),
                              const Text("Upload"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10.w,
              right: 10.w,
              child: IconButton(
                padding: EdgeInsets.zero,
                splashRadius: 30.r,
                icon: Icon(Icons.close_rounded, size: 42.sp),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        );
      },
      elevation: 6,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.w),
          topRight: Radius.circular(20.w),
        ),
      ),
      constraints: BoxConstraints(
        maxHeight: (1.sh - 240.h),
      ),
    );
  }

  List<Widget> generateData(SummaryAudit audit) {
    List<Widget> items = <Widget>[];
    final summary = groupBy(audit.adjust!, (e) => e.desc);

    for (var e in summary.entries) {
      final nominal = e.value.fold(0.0, (prev, e) => prev + e.nominal);
      items.add(
        Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Text(
                "•  ${e.key?.capitalize}",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                ),
              ),
              const Spacer(),
              Text(
                nominal.toCurrencyFormat,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                ),
              )
            ],
          ),
        ),
      );
    }
    return items;
  }

  Future<Uint8List?> _capturePng() async {
    RenderRepaintBoundary boundary =
        _globalKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;

    ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    var pngBytes = byteData?.buffer.asUint8List();
    return pngBytes;
  }
}
