import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/constants/color_constants.dart';
import '/core/constants/value_constants.dart';
import '/core/utils/debouncer.dart';
import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../core/utils/validator.dart';
import '../../../../common/presentation/components/button_widget.dart';
import '../../../../common/presentation/components/image_picker_widget.dart';
import '../../../../common/presentation/components/text_field_widget.dart';
import '../../../../splash/presentation/cubit/setting_cubit.dart';
import '../../domain/entities/data_collection.dart';
import '../cubit/temp_input_cubit.dart';

typedef OnNext = Function(DetailTransaction?);
typedef OnPrev = Function(DetailTransaction?);

class InputNominalWidget extends StatefulWidget {
  const InputNominalWidget({
    Key? key,
    required this.index,
    required this.dataCollection,
    this.lastIndex = false,
    this.onPrev,
    this.onNext,
  }) : super(key: key);

  final int index;
  final DataCollection dataCollection;
  final bool lastIndex;
  final OnPrev? onPrev;
  final OnNext? onNext;

  @override
  State<InputNominalWidget> createState() => _InputNominalWidgetState();
}

class _InputNominalWidgetState extends State<InputNominalWidget>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  late Debouncer debouncer;
  late AnimationController _messageC;
  late int _index;

  final TextEditingController _nominal = TextEditingController();
  double _nominalValue = 0.0;
  File? _imageFile;

  @override
  void initState() {
    super.initState();
    debouncer = Debouncer(const Duration(milliseconds: 500));
    _messageC = BottomSheet.createAnimationController(this)
      ..duration = ValueConstants.animationDuration;
    _index = widget.index;
    _nominal.text = _nominalValue.toCurrencyFormat;
    _nominal.addListener(() {
      setInitialValue(_nominal.text);
    });

    setInitialTransaction(widget.dataCollection);
  }

  @override
  void dispose() {
    debouncer.reset();
    _messageC.dispose();
    _nominal.dispose();
    super.dispose();
  }

  void setInitialValue(String value) {
    if (value.isNotEmpty) {
      _nominalValue = value.fromCurrencyFormat;
    }
  }

  @override
  Widget build(BuildContext context) {
    final imgQuality =
        context.select((SettingCubit cubit) => cubit.state.data?.imageQuality);



    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h, bottom: 35.h),
      child: Material(
        elevation: 1,
        color: Colors.white,
        shadowColor: ColorConstants.shadowColor,
        borderRadius: BorderRadius.circular(ValueConstants.borderRadius),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lampiran Setoran $_index",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                SizedBox(height: 24.h),
                TextFieldWidget(
                  label: "Jumlah Nominal",
                  hint: "Input jumlah nominal",
                  controller: _nominal,
                  inputFormat: InputFormat.currency,
                  validator: RequiredValidator(
                      errorMessage: "Data tidak boleh kosong"),
                ),
                SizedBox(height: 16.h),
                Expanded(
                  child: ImagePickerWidget(
                    quality: imgQuality,
                    label: "Foto Lampiran",
                    initialImage: _imageFile,
                    onCapture: (file) {
                      _imageFile = file;
                    },
                    validator: RequiredValidator(
                        errorMessage: "Foto lampiran tidak boleh kosong"),
                  ),
                ),
                SizedBox(height: 24.h),
                ButtonWidget(
                  elevation: 0,
                  color: ColorConstants.backgroundColor,
                  size: Size.fromHeight(56.h),
                  label: Text(
                    widget.lastIndex ? "Selesai" : "Selanjutnya",
                    style: const TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final trans = DetailTransaction(
                          seqno: _index,
                          nominal: _nominalValue,
                          pathImage: _imageFile?.path);

                      widget.onNext?.call(trans);
                    }
                  },
                ),
                SizedBox(height: 8.h),
                if (widget.onPrev != null)
                  ButtonWidget(
                    elevation: 0,
                    color: Colors.white,
                    side: BorderSide(
                        width: 1.w, color: ColorConstants.backgroundColor),
                    size: Size.fromHeight(56.h),
                    label: Text(
                      "Kembali",
                      style: TextStyle(
                        color: ColorConstants.backgroundColor,
                      ),
                    ),
                    onPressed: () {
                      final trans = DetailTransaction(
                          seqno: widget.index,
                          nominal: _nominalValue,
                          pathImage: _imageFile?.path);
                      widget.onPrev?.call(trans);
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void setInitialTransaction(DataCollection data) {
    final details = data.details?.where((e) => e.seqno == widget.index);
    if(details != null && details.isNotEmpty){
      _nominal.text = details.first.nominal.toCurrencyFormat;
      _imageFile = details.first.pathImage != null ? File(details.first.pathImage!) : null;
    }
  }
}
