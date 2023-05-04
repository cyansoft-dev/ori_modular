import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../proses/domain/entities/summary_audit.dart';
import '../../../../proses/presentation/cubit/summary_audit_cubit.dart';

import '../../../../../../core/appstate/app_state.dart';
import '../../../../../../core/constants/color_constants.dart';
import '../../../../../../core/constants/value_constants.dart';
import '../../../../../../core/di/injector.dart';
import '../../../../../../core/utils/extensions.dart';
import '../../../../../../core/utils/validator.dart';
import '../../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../../collection/transaction/presentation/components/page_header_delegate.dart';
import '../../../../../common/domain/entities/base_response.dart';
import '../../../../../common/presentation/components/button_widget.dart';
import '../../../../../common/presentation/components/date_field_widget.dart';
import '../../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../../common/presentation/components/dropdown_widget.dart';
import '../../../../../common/presentation/components/image_picker_widget.dart';
import '../../../../../common/presentation/components/message_widget.dart';
import '../../../../../common/presentation/components/text_field_widget.dart';
import '../../../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../domain/entities/minus_opname.dart';
import '../../cubit/verifikasi_minus_cubit.dart';

class MinusFraudPage extends StatefulWidget {
  const MinusFraudPage({Key? key}) : super(key: key);

  @override
  State<MinusFraudPage> createState() => _MinusFraudPageState();
}

class _MinusFraudPageState extends State<MinusFraudPage>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final dateFormat = DateFormat("dd-MM-yyyy");
  final TextEditingController _nik = TextEditingController();
  final TextEditingController _nominal = TextEditingController();
  final TextEditingController _modus = TextEditingController();
  final TextEditingController _komitmen = TextEditingController();
  final TextEditingController _date = TextEditingController();
  final ValueNotifier<RefundStatus?> _statusDana = ValueNotifier(null);
  final ValueNotifier<JenisSanksi?> _sanksi = ValueNotifier(null);
  final ValueNotifier<File?> _imgSanksi = ValueNotifier(null);
  final ValueNotifier<File?> _imgRefund = ValueNotifier(null);
  late AnimationController _messageC;

  @override
  void initState() {
    super.initState();
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
  }

  @override
  void dispose() {
    _nik.dispose();
    _nominal.dispose();
    _modus.dispose();
    _sanksi.dispose();
    _imgSanksi.dispose();
    _statusDana.dispose();
    _imgRefund.dispose();
    _date.dispose();
    _messageC.dispose();
    super.dispose();
  }

  void clear() {
    _sanksi.value = null;
    _imgSanksi.value = null;
    _statusDana.value = null;
    _imgRefund.value = null;
    _nik.clear();
    _nominal.clear();
    _modus.clear();
    _date.clear();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final selectedStore =
        context.select((SelectedStoreCubit cubit) => cubit.state);

    final summary =
        context.select((SummaryAuditCubit cubit) => cubit.state.data);

    return Scaffold(
      body: BlocProvider<VerifikasiMinusCubit>(
        create: (context) => locator.get<VerifikasiMinusCubit>(),
        child: Builder(builder: (context) {
          return BlocListener<VerifikasiMinusCubit, AppState<BaseResponse>>(
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
                        final adjustment = AdjustmentAudit(
                          nominal: _nominal.text.fromCurrencyFormat,
                          desc: "Fraud",
                        );
                        context
                            .read<SummaryAuditCubit>()
                            .updateAdjustment(adjustment);
                        clear();
                      },
                    );
                  },
                  error: (err) {
                    showMessage(
                      context,
                      err.errMessage,
                      type: MessageType.error,
                      controller: _messageC,
                    );
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
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 20.w, right: 20.w, top: 5.h, bottom: 35.h),
                    child: Material(
                      elevation: 1,
                      color: Colors.white,
                      shadowColor: ColorConstants.shadowColor,
                      borderRadius:
                          BorderRadius.circular(ValueConstants.borderRadius),
                      child:
                          _buildBody(context, selectedStore.kodetoko, summary),
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget _buildBody(BuildContext context, String? kdtk, SummaryAudit? resume) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Text(
              "Form Fraud",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            SizedBox(height: 24.h),
            TextFieldWidget(
              label: "NIK",
              hint: "Input NIK penyebab fraud",
              controller: _nik,
              /*onChanged: (value) => _nik.value = value,*/
              validator: MultiValidator([
                RequiredValidator(errorMessage: "NIK tidak boleh kosong"),
                MinLengthValidator(10, errorMessage: "NIK minimal 10 digit")
              ]),
            ),
            SizedBox(height: 16.h),
            TextFieldWidget(
              label: "Nominal",
              hint: "Input nominal fraud ybs",
              inputFormat: InputFormat.currency,
              controller: _nominal,
              /*onChanged: (value) => _nominal.value = value.fromCurrencyFormat,*/
              validator:
                  RequiredValidator(errorMessage: "Nominal tidak boleh kosong"),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              height: 100.h,
              child: TextFieldWidget(
                label: "Modus",
                expands: true,
                hint: "Cara fraud & cara menutupi fraud",
                controller: _modus,
                /*onChanged: (value) => _modus.value = value,*/
                validator:
                    RequiredValidator(errorMessage: "Modus tidak boleh kosong"),
              ),
            ),
            SizedBox(height: 16.h),
            DateFieldWidget(
              title: "Tanggal",
              hint: "Awal kejadian fraud",
              controller: _date,
              validator: RequiredValidator(
                  errorMessage: "Tanggal sales tidak boleh kosong"),
            ),
            SizedBox(height: 16.h),
            DropdownWidget(
              label: "Status refund",
              hint: "Pilih status pengembalian dana",
              items: RefundStatus.values.map((e) => e.status).toList(),
              validator:
                  RequiredValidator(errorMessage: "Status tidak boleh kosong"),
              onChanged: (value) {
                _statusDana.value = RefundStatus.fromString(value);
              },
            ),
            ValueListenableBuilder<RefundStatus?>(
                valueListenable: _statusDana,
                builder: (context, value, _) {
                  if (value != null && value == RefundStatus.belumBayar) {
                    return Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: SizedBox(
                        height: 100.h,
                        child: TextFieldWidget(
                          expands: true,
                          keyboardType: TextInputType.multiline,
                          label: "Komitmen",
                          hint: "Komitmen pengembalian dana",
                          controller: _komitmen,
                          validator: RequiredValidator(
                              errorMessage: "Komitmen tidak boleh kosong"),
                          /*onChanged: (value) => _komitmen.value = value,*/
                        ),
                      ),
                    );
                  }
                  return Container();
                }),
            ValueListenableBuilder<RefundStatus?>(
              valueListenable: _statusDana,
              builder: (context, value, _) {
                if (value == null || value == RefundStatus.belumBayar) {
                  return Container();
                }
                return Padding(
                  padding: EdgeInsets.only(top: 16.h),
                  child: ImagePickerWidget(
                    size: Size.fromHeight(350.h),
                    label: "Foto surat bukti bayar",
                    validator: RequiredValidator(
                        errorMessage: "Foto tidak boleh kosong"),
                    onCapture: (file) {
                      _imgRefund.value = file;
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 16.h),
            DropdownWidget(
              label: "Sanksi",
              hint: "Sanksi karyawan ybs",
              items: JenisSanksi.values.map((e) => e.sanksi).toList(),
              validator: RequiredValidator(
                  errorMessage: "Sanksi karyawan tidak boleh kosong"),
              onChanged: (value) {
                _sanksi.value = JenisSanksi.fromString(value);
              },
            ),
            ValueListenableBuilder<JenisSanksi?>(
              valueListenable: _sanksi,
              builder: (context, sanksi, _) {
                if (sanksi == null ||
                    sanksi == JenisSanksi.nothing ||
                    sanksi == JenisSanksi.lisan) {
                  return Container();
                }

                return Padding(
                  padding: EdgeInsets.only(top: 16.h),
                  child: ImagePickerWidget(
                    size: Size.fromHeight(350.h),
                    label: "Foto surat teguran / surat peringatan",
                    validator: RequiredValidator(
                        errorMessage: "Foto tidak boleh kosong"),
                    onCapture: (file) {
                      _imgSanksi.value = file;
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 24.h),
            BlocBuilder<VerifikasiMinusCubit, AppState<BaseResponse>>(
                builder: (context, state) {
              return ButtonWidget(
                elevation: 0,
                isLoading: state.isLoading,
                color: ColorConstants.backgroundColor,
                size: Size.fromHeight(56.h),
                label: const Text(
                  "Posting",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  if (_formKey.currentState!.validate()) {
                    final sum = resume?.summary ?? 0.0;
                    final adj = resume?.adjust
                            ?.fold(0.0, (value, e) => e.nominal + value) ??
                        0.0;

                    late String messageWarning;
                    if (sum + (adj + _nominal.text.fromCurrencyFormat) > 0) {
                      messageWarning =
                          "Total nominal yang anda input melebihi nilai yang perlu diverifikasikan. Apakah data akan tetap diposting ? \n( ${(sum + adj).toCurrencyFormat} )";
                    } else {
                      messageWarning =
                          "Apakah data yang akan diposting sudah benar ?";
                    }

                    showDialogMessage(
                      context,
                      messageWarning,
                      controller: _messageC,
                      type: MessageType.warning,
                      processLabel: "Ya",
                      cancelLabel: "Tidak",
                      onProcess: () {
                        final params = MinusFraud(
                          userId: _nik.text,
                          kdtk: kdtk,
                          nominal: _nominal.text.fromCurrencyFormat,
                          modus: _modus.text,
                          tanggal: dateFormat.parse(_date.text),
                          refundStatus: _statusDana.value,
                          commitment: _komitmen.text,
                          imgBukti: _imgRefund.value,
                          sanksi: _sanksi.value,
                          imgSanksi: _imgSanksi.value,
                        );

                        context
                            .read<VerifikasiMinusCubit>()
                            .uploadFraud(params);
                      },
                    );
                  }
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
