import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../../../core/appstate/app_state.dart';
import '../../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../../common/domain/entities/base_response.dart';
import '../../../../../common/presentation/components/message_widget.dart';
import '../../cubit/verifikasi_minus_cubit.dart';

import '../../../../../../core/constants/color_constants.dart';
import '../../../../../../core/constants/value_constants.dart';
import '../../../../../../core/di/injector.dart';
import '../../../../../../core/utils/validator.dart';
import '../../../../../../core/utils/extensions.dart';
import '../../../../../collection/transaction/presentation/components/page_header_delegate.dart';
import '../../../../../common/presentation/components/button_widget.dart';
import '../../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../../common/presentation/components/image_picker_widget.dart';
import '../../../../../common/presentation/components/text_field_widget.dart';
import '../../../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../../proses/domain/entities/summary_audit.dart';
import '../../../../proses/presentation/cubit/summary_audit_cubit.dart';
import '../../../domain/entities/minus_opname.dart';

class MinusRrakPage extends StatefulWidget {
  const MinusRrakPage({Key? key}) : super(key: key);

  @override
  State<MinusRrakPage> createState() => _MinusRrakPageState();
}

class _MinusRrakPageState extends State<MinusRrakPage>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final dateFormat = DateFormat("dd-MM-yyyy");
  final ValueNotifier<File?> _imgNota = ValueNotifier(null);
  final TextEditingController _date = TextEditingController();
  final TextEditingController _nominal = TextEditingController();
  final TextEditingController _jenis = TextEditingController();
  late AnimationController _messageC;

  @override
  void initState() {
    super.initState();
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
  }

  @override
  void dispose() {
    _nominal.dispose();
    _jenis.dispose();
    _imgNota.dispose();
    _date.dispose();
    _messageC.dispose();
    super.dispose();
  }

  void clear() {
    _date.clear();
    _jenis.clear();
    _nominal.clear();
    _imgNota.value = null;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final selectedStore =
        context.select((SelectedStoreCubit cubit) => cubit.state);

    final summary =
        context.select((SummaryAuditCubit cubit) => cubit.state.data);

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                          desc: "RRAK",
                        );

                        context
                            .read<SummaryAuditCubit>()
                            .updateAdjustment(adjustment);

                        clear();
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
                    showPopButton: true,
                  ),
                ),
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
                      child: _buildBody(
                        context,
                        selectedStore.kodetoko,
                        summary,
                      ),
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
              "Form RRAK / Non RRAK",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            SizedBox(height: 24.h),
            TextFieldWidget(
              label: "Jenis barang",
              hint: "Input jenis barang pembelian",
              controller: _jenis,
              validator:
                  RequiredValidator(errorMessage: "Form tidak boleh kosong"),
            ),
            SizedBox(height: 16.h),
            TextFieldWidget(
              label: "Nominal",
              hint: "Input nominal pada nota",
              inputFormat: InputFormat.currency,
              controller: _nominal,
              validator:
                  RequiredValidator(errorMessage: "Form tidak boleh kosong"),
              /*onChanged: (value) {
                _nominal.text = value.fromCurrencyFormat;
              },*/
            ),
            SizedBox(height: 16.h),
            ImagePickerWidget(
              size: Size.fromHeight(350.h),
              label: "Foto nota pembelian",
              validator:
                  RequiredValidator(errorMessage: "Foto tidak boleh kosong"),
              onCapture: (file) {
                _imgNota.value = file;
              },
            ),
            SizedBox(height: 24.h),
            BlocBuilder<VerifikasiMinusCubit, AppState<BaseResponse>>(
                builder: (context, state) {
              return ButtonWidget(
                elevation: 0,
                isLoading: state.isLoading,
                color: ColorConstants.backgroundColor,
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
                        final params = MinusRrak(
                          kdtk: kdtk,
                          jenis: _jenis.text,
                          nominal: _nominal.text.fromCurrencyFormat,
                          imgNota: _imgNota.value,
                        );

                        context.read<VerifikasiMinusCubit>().uploadRrak(params);
                      },
                    );
                  }
                },
                size: Size.fromHeight(56.h),
                label: const Text(
                  "Posting",
                  style: TextStyle(color: Colors.white),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
