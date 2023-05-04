import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/utils/extensions.dart';
import '../../../../../common/presentation/cubit/selected_store_cubit.dart';
import '../../../domain/entities/plus_opname.dart';

import '../../../../../../core/appstate/app_state.dart';
import '../../../../../../core/constants/color_constants.dart';
import '../../../../../../core/constants/value_constants.dart';
import '../../../../../../core/di/injector.dart';
import '../../../../../../core/utils/validator.dart';
import '../../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../../common/domain/entities/base_response.dart';
import '../../../../../common/presentation/components/button_widget.dart';
import '../../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../../common/presentation/components/message_widget.dart';
import '../../../../../common/presentation/components/text_field_widget.dart';
import '../../../../proses/domain/entities/summary_audit.dart';
import '../../../../proses/presentation/cubit/summary_audit_cubit.dart';
import '../../cubit/verifikasi_plus_cubit.dart';

class VerifikasiPlusPage extends StatefulWidget {
  const VerifikasiPlusPage({super.key});

  @override
  State<VerifikasiPlusPage> createState() => _VerifikasiPlusPageState();
}

class _VerifikasiPlusPageState extends State<VerifikasiPlusPage>
    with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nominal = TextEditingController();
  final TextEditingController _description = TextEditingController();
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
    _description.dispose();
    _messageC.dispose();
    super.dispose();
  }

  void clear() {
    _nominal.clear();
    _description.clear();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final selectedStore =
        context.select((SelectedStoreCubit cubit) => cubit.state);
    final resume =
        context.select((SummaryAuditCubit cubit) => cubit.state.data);

    return BlocProvider<VerifikasiPlusCubit>(
      create: (context) => locator.get<VerifikasiPlusCubit>(),
      child: Builder(builder: (context) {
        return BlocListener<VerifikasiPlusCubit, AppState<BaseResponse>>(
          listener: (context, state) {
            state.maybeWhen(
                orElse: () => null,
                data: (data) {
                  showMessage(context, data.message ?? "Upload data berhasil",
                      type: MessageType.information, controller: _messageC);

                  _formKey.currentState!.reset();
                  final adjustment = AdjustmentAudit(
                    nominal: _nominal.text.fromCurrencyFormat,
                    desc: "Plus",
                  );

                  context
                      .read<SummaryAuditCubit>()
                      .updateAdjustment(adjustment);

                  clear();
                },
                error: (err) {
                  showMessage(context, err.errMessage,
                      type: MessageType.error, controller: _messageC);
                });
          },
          child: CustomScrollView(
            slivers: [
              SliverOverlapInjector(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
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
                    child: Form(
                      key: _formKey,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 30.h, horizontal: 20.w),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: [
                            Text(
                              "Penyebab Plus",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                            SizedBox(height: 24.h),
                            TextFieldWidget(
                              label: "Nominal",
                              hint: "Input nominal selisih plus",
                              inputFormat: InputFormat.currency,
                              controller: _nominal,
                              validator: RequiredValidator(
                                  errorMessage: "Form tidak boleh kosong"),
                            ),
                            SizedBox(height: 16.h),
                            SizedBox(
                              height: 300.h,
                              child: TextFieldWidget(
                                expands: true,
                                label: "Penyebab",
                                hint: "Input penyebab selisih plus",
                                controller: _description,
                                validator: RequiredValidator(
                                    errorMessage: "Form tidak boleh kosong"),
                              ),
                            ),
                            SizedBox(height: 24.h),
                            BlocBuilder<VerifikasiPlusCubit,
                                    AppState<BaseResponse>>(
                                builder: (context, state) {
                              return ButtonWidget(
                                elevation: 0,
                                isLoading: state.isLoading,
                                color: ColorConstants.backgroundColor,
                                onPressed: () {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  if (_formKey.currentState!.validate()) {
                                    final sum = resume?.summary ?? 0.0;
                                    final adj = resume?.adjust?.fold(0.0,
                                            (value, e) => e.nominal + value) ??
                                        0.0;

                                    late String messageWarning;
                                    if (sum +
                                            (adj +
                                                _nominal
                                                    .text.fromCurrencyFormat) <
                                        0) {
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
                                        final params = PlusOpname(
                                          kdtk: selectedStore.kodetoko,
                                          nominal:
                                              _nominal.text.fromCurrencyFormat,
                                          deskripsi: _description.text,
                                        );

                                        context
                                            .read<VerifikasiPlusCubit>()
                                            .upload(params);
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
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
