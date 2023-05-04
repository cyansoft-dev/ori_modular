import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/utils/debouncer.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../core/utils/validator.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../common/presentation/components/button_widget.dart';
import '../../../../common/presentation/components/text_field_widget.dart';
import '../../../menu/domain/entities/master_opname.dart';
import '../../domain/entities/data_audit.dart';
import '../cubit/temp_audit_cubit.dart';

class PageOpnameRrak extends StatefulWidget {
  const PageOpnameRrak({
    Key? key,
    required this.pageController,
    required this.danaRrak,
    required this.master,
  }) : super(key: key);

  final PageController pageController;
  final DanaRrak? danaRrak;
  final MasterOpname master;

  @override
  State<PageOpnameRrak> createState() => _PageOpnameRrakState();
}

class _PageOpnameRrakState extends State<PageOpnameRrak> {
  final TextEditingController _rencanaRrak = TextEditingController();
  final TextEditingController _fisikDanaRrak = TextEditingController();
  final TextEditingController _notaRrak = TextEditingController();
  final TextEditingController _selisih = TextEditingController();
  late Debouncer debouncer;

  final formKey = GlobalKey<FormState>();

  double _rencanaValue = 0.0;
  double _fisikValue = 0.0;
  double _notaValue = 0.0;
  double _selisihValue = 0.0;

  @override
  void initState() {
    super.initState();
    debouncer = Debouncer(const Duration(milliseconds: 500));

    _rencanaValue = widget.danaRrak?.rencanaRrak ?? 0.0;
    _rencanaRrak.text = _rencanaValue.toCurrencyFormat;

    _fisikValue = widget.danaRrak?.fisikDanaRrak ?? 0.0;
    _fisikDanaRrak.text = _fisikValue.toCurrencyFormat;

    _notaValue = widget.master.notaRrak ?? 0.0;
    _notaRrak.text = _notaValue.toCurrencyFormat;

    setSelisih();
  }

  @override
  void dispose() {
    _rencanaRrak.dispose();
    _fisikDanaRrak.dispose();
    _notaRrak.dispose();
    _selisih.dispose();
    super.dispose();
  }

  void setListener() {
    _rencanaRrak.addListener(() {
      setRencanaValue(_rencanaRrak.text);
    });
    _fisikDanaRrak.addListener(() {
      setFisikValue(_fisikDanaRrak.text);
    });
    _notaRrak.addListener(() {
      setNotaValue(_notaRrak.text);
    });
  }

  void setRencanaValue(String value) {
    if (value.isNotEmpty) {
      _rencanaValue = value.fromCurrencyFormat;
      setSelisih();
    }
  }

  void setFisikValue(String value) {
    if (value.isNotEmpty) {
      _fisikValue = value.fromCurrencyFormat;
      setSelisih();
    }
  }

  void setNotaValue(String value) {
    if (value.isNotEmpty) {
      _notaValue = value.fromCurrencyFormat;
      setSelisih();
    }
  }

  void setSelisih() {
    _selisihValue = (_fisikValue + _notaValue) - _rencanaValue;
    _selisih.text = _selisihValue.toCurrencyFormat;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h, bottom: 20.w),
      child: Material(
        elevation: 1,
        color: Colors.white,
        shadowColor: ColorConstants.shadowColor,
        borderRadius: BorderRadius.circular(ValueConstants.borderRadius),
        child: Padding(
          padding: EdgeInsets.all(30.w),
          child: Form(
            key: formKey,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Text(
                  "SO Dana RRAK",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                SizedBox(height: 24.h),
                TextFieldWidget(
                  label: "Data rencana RRAK",
                  controller: _rencanaRrak,
                  inputFormat: InputFormat.currency,
                  validator: MultiValidator([
                    RequiredValidator(errorMessage: "Data tidak boleh kosong"),
                  ]),
                  /*onChanged: setRencanaValue,*/
                ),
                SizedBox(height: 16.h),
                TextFieldWidget(
                  label: "Fisik Dana RRAK",
                  controller: _fisikDanaRrak,
                  inputFormat: InputFormat.currency,
                  validator: MultiValidator([
                    RequiredValidator(errorMessage: "Data tidak boleh kosong"),
                  ]),
                  /*onChanged: setFisikValue,*/
                ),
                SizedBox(height: 16.h),
                TextFieldWidget(
                  label: "Total Nota RRAK",
                  controller: _notaRrak,
                  inputFormat: InputFormat.currency,
                  validator: MultiValidator([
                    RequiredValidator(errorMessage: "Data tidak boleh kosong"),
                  ]),
                  /*onChanged: setNotaValue,*/
                ),
                SizedBox(height: 16.h),
                TextFieldWidget(
                  readOnly: true,
                  label: "Selisih",
                  controller: _selisih,
                  inputFormat: InputFormat.currency,
                ),
                SizedBox(height: 24.h),
                ButtonWidget(
                  elevation: 0,
                  size: Size(120.w, 56.h),
                  label: const Text(
                    "Selanjutnya",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final data = DanaRrak(
                        rencanaRrak: _rencanaValue,
                        fisikDanaRrak: _fisikValue,
                        notaRrak: _notaValue,
                        selisih: _selisihValue,
                      );

                      context.read<TempAuditCubit>().setDanaRrak(data);
                      widget.pageController.animateToPage(3,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    }
                  },
                ),
                SizedBox(height: 8.h),
                ButtonWidget(
                    elevation: 0,
                    color: Colors.white,
                    side: BorderSide(
                      width: 1.w,
                      color: ColorConstants.backgroundColor,
                    ),
                    size: Size(120.w, 56.h),
                    label: Text(
                      "Kembali",
                      style: TextStyle(
                        color: ColorConstants.backgroundColor,
                      ),
                    ),
                    onPressed: () {
                      final data = DanaRrak(
                        rencanaRrak: _rencanaValue,
                        fisikDanaRrak: _fisikValue,
                        notaRrak: _notaValue,
                        selisih: _selisihValue,
                      );

                      context.read<TempAuditCubit>().setDanaRrak(data);
                      widget.pageController.animateToPage(1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
