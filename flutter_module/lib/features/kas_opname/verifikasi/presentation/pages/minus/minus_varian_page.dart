import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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
import '../../../../../common/presentation/components/message_widget.dart';
import '../../../../../common/presentation/components/text_field_widget.dart';
import '../../../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../../proses/domain/entities/summary_audit.dart';
import '../../../../proses/presentation/cubit/summary_audit_cubit.dart';
import '../../../domain/entities/minus_opname.dart';
import '../../cubit/verifikasi_minus_cubit.dart';

class MinusVarianPage extends StatefulWidget {
  const MinusVarianPage({Key? key}) : super(key: key);

  @override
  State<MinusVarianPage> createState() => _MinusVarianPageState();
}

class _MinusVarianPageState extends State<MinusVarianPage>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final dateFormat = DateFormat("dd-MM-yyyy");
  final TextEditingController _nominal = TextEditingController();
  final TextEditingController _status = TextEditingController();
  final TextEditingController _date = TextEditingController();
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
    _status.dispose();
    _date.dispose();
    _messageC.dispose();
    super.dispose();
  }

  void clear() {
    _nominal.clear();
    _status.clear();
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
                          desc: "Varian Plus",
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
              "Form Varian Plus",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            SizedBox(height: 24.h),
            DateFieldWidget(
              title: "Tanggal kejadian",
              hint: "Pilih tanggal kejadian",
              controller: _date,
              validator: RequiredValidator(
                  errorMessage: "Tanggal kejadian tidak boleh kosong"),
            ),
            SizedBox(height: 16.h),
            TextFieldWidget(
              label: "Nominal",
              hint: "Nominal varian plus",
              inputFormat: InputFormat.currency,
              controller: _nominal,
              validator:
                  RequiredValidator(errorMessage: "Form tidak boleh kosong"),
              /*onChanged: (value) {
                _nominal.value = value.fromCurrencyFormat;
              },*/
            ),
            SizedBox(height: 16.h),
            DropdownWidget(
              label: "Status pengurusan",
              hint: "Pilih pengurusan berita acara",
              items: VarianStatus.values.map((e) => e.status).toList(),
              validator: RequiredValidator(
                  errorMessage: "Status pengurusan BA kosong"),
              onChanged: (value) {
                if (value != null) _status.text = value;
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
                        final params = MinusVarian(
                          kdtk: kdtk,
                          tanggal: dateFormat.parse(_date.text),
                          nominal: _nominal.text.fromCurrencyFormat,
                          statusVarian: VarianStatus.fromString(_status.text),
                        );

                        context
                            .read<VerifikasiMinusCubit>()
                            .uploadVarian(params);
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
            }),
          ],
        ),
      ),
    );
  }
}
