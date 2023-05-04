import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../core/utils/validator.dart';
import '../../../../common/presentation/components/button_widget.dart';
import '../../../../common/presentation/components/dialog_message_widget.dart';
import '../../../../common/presentation/components/message_widget.dart';
import '../../../../common/presentation/components/text_field_widget.dart';
import '../../../menu/domain/entities/delivery_master.dart';
import '../../domain/entities/data_collection.dart';
import '../cubit/temp_input_cubit.dart';

typedef OnTextChanged = Function(SummaryTransaction);
typedef OnSubmitDescription = Function(int id, String description);

class InputBstWidget extends StatefulWidget {
  const InputBstWidget({
    super.key,
    required this.label,
    this.hint,
    required this.data,
    required this.detailTransaction,
    this.onTextChanged,
    this.onSubmitDescription,
  });

  final String label;
  final String? hint;
  final OnTextChanged? onTextChanged;
  final OnSubmitDescription? onSubmitDescription;
  final List<DetailTransaction> detailTransaction;
  final MasterBst data;

  @override
  State<InputBstWidget> createState() => _InputBstWidgetState();
}

class _InputBstWidgetState extends State<InputBstWidget>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  late AnimationController _messageC;
  final TextEditingController _initial = TextEditingController();
  final TextEditingController _description = TextEditingController();
  SummaryTransaction _tempSummary = const SummaryTransaction();
  late String labelDesc;
  late String hintDesc;
  late Validator validatorDesc;

  @override
  void initState() {
    super.initState();
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
    addNominal();
    restrictKurset();
    _initial.addListener(valueListener);
  }

  @override
  void dispose() {
    _initial.dispose();
    _description.dispose();
    _messageC.dispose();
    super.dispose();
  }

  void restrictKurset() {
    if (widget.label.toLowerCase().contains("kurset")) {
      labelDesc = "Tanggal Kurset";
      hintDesc = "Input tanggal kurset yang disetorkan";
      validatorDesc = MultiDateValidator(DateFormat("dd-MM-yyyy"),
          errorMessage: "Input tanggal dengan format dd-MM-yyyy");
    } else {
      labelDesc = "Keterangan";
      hintDesc = "Input Keterangan";
      validatorDesc = RequiredValidator(errorMessage: "Harap Keterangan diisi");
    }
  }

  Future<void> addNominal() async {
    if (widget.data.id == 1) {
      final details = widget.detailTransaction;
      double nominal = 0.0;
      if (details.isNotEmpty) {
        nominal = details.fold(0.0, (value, e) => value + e.nominal!);
        _initial.text = nominal.toCurrencyFormat;
      }

      context.read<TempInputCubit>().setSummary(
            SummaryTransaction(
              seqno: widget.data.id,
              label: widget.data.label,
              nominal: nominal,
            ),
          );
    }
  }

  void valueListener() {
    final nominal = _initial.text.fromCurrencyFormat;
    _tempSummary = _tempSummary.copyWith(
      seqno: widget.data.id,
      label: widget.data.label,
      nominal: nominal,
    );
    widget.onTextChanged?.call(_tempSummary);
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldWidget(
      label: widget.label,
      hint: widget.hint,
      readOnly: (widget.data.id == 1),
      controller: _initial,
      inputFormat: InputFormat.currency,
      suffixIcon: (widget.data.isDesc && widget.data.id! > 0)
          ? InkResponse(
              radius: 5,
              onTap: () {
                if (_initial.text.isEmpty) {
                  showMessage(
                    context,
                    "Anda tidak bisa menambahkan keterangan apabila nominal tidak diisi.",
                    controller: _messageC,
                    type: MessageType.warning,
                  );
                  return;
                }
                showModalDescription(context);
              },
              child: Icon(Iconsax.edit, size: 16.sp))
          : null,
    );
  }

  Future<void> showModalDescription(BuildContext context) async {
    return showModalBottomSheet(
      transitionAnimationController: _messageC,
      context: context,
      elevation: 6,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.w),
          topRight: Radius.circular(20.w),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: 500.h,
            child: Stack(
              children: [
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
                Positioned(
                  top: 80.h,
                  left: 20.w,
                  right: 20.w,
                  bottom: 20.h,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFieldWidget(
                          readOnly: true,
                          controller:
                              TextEditingController(text: widget.data.label),
                        ),
                        SizedBox(height: 16.h),
                        SizedBox(
                          height: 225.h,
                          child: TextFieldWidget(
                            expands: true,
                            controller: _description,
                            label: labelDesc,
                            hint: hintDesc,
                            validator: validatorDesc,
                          ),
                        ),
                        SizedBox(height: 24.h),
                        ButtonWidget(
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Iconsax.save_2),
                              SizedBox(width: 10.w),
                              const Text("Simpan"),
                            ],
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (_tempSummary.seqno != null &&
                                  _description.text.isNotEmpty) {
                                widget.onSubmitDescription?.call(
                                  _tempSummary.seqno!,
                                  _description.text,
                                );
                              }
                              Navigator.pop(context);
                            }
                          },
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
