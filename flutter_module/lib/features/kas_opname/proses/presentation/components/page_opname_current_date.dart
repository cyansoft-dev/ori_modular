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

class PageOpnameCurrentDate extends StatefulWidget {
  const PageOpnameCurrentDate({
    Key? key,
    required this.pageController,
    this.dataCurrent,
    required this.master,
  }) : super(key: key);

  final PageController pageController;
  final DanaCurrent? dataCurrent;
  final MasterOpname master;

  @override
  State<PageOpnameCurrentDate> createState() => _PageOpnameCurrentDateState();
}

class _PageOpnameCurrentDateState extends State<PageOpnameCurrentDate> {
  final formKey = GlobalKey<FormState>();

  late Debouncer debouncer;
  final TextEditingController _computer = TextEditingController();
  final TextEditingController _fisik = TextEditingController();
  final TextEditingController _selisih = TextEditingController();

  double _compValue = 0.0;
  double _fisikValue = 0.0;
  double _selisihValue = 0.0;

  @override
  void initState() {
    super.initState();
    debouncer = Debouncer(const Duration(milliseconds: 500));

    _compValue = widget.master.salesCurrent ?? 0.0;
    _computer.text = _compValue.toCurrencyFormat;

    _fisikValue = widget.dataCurrent?.salesFisik ?? 0.0;
    _fisik.text = _fisikValue.toCurrencyFormat;

    setSelisih();
    setListener();
  }

  @override
  void dispose() {
    _fisik.dispose();
    _selisih.dispose();
    _computer.dispose();
    super.dispose();
  }

  void setListener() {
    _computer.addListener(() {
      setCompValue(_computer.text);
    });

    _fisik.addListener(() {
      setFisikValue(_fisik.text);
    });
  }

  void setCompValue(String value) {
    if (value.isNotEmpty) {
      _compValue = value.fromCurrencyFormat;
      setSelisih();
    }
  }

  void setFisikValue(String value) {
    if (value.isNotEmpty) {
      _fisikValue = value.fromCurrencyFormat;
      setSelisih();
    }
  }

  void setSelisih() {
    _selisihValue = (_fisikValue - _compValue);
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
                  "SO Dana Sales Hari Ini",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                SizedBox(height: 24.h),
                TextFieldWidget(
                  label: "Data Sales Computer",
                  controller: _computer,
                  readOnly: true,
                  inputFormat: InputFormat.currency,
                  /*onChanged: setCompValue,*/
                ),
                SizedBox(height: 16.h),
                TextFieldWidget(
                  label: "Fisik Uang",
                  controller: _fisik,
                  validator: MultiValidator([
                    RequiredValidator(errorMessage: "Data tidak boleh kosong"),
                  ]),
                  inputFormat: InputFormat.currency,
                  /*onChanged: setFisikValue,*/
                ),
                SizedBox(height: 16.h),
                TextFieldWidget(
                  label: "Selisih Uang Fisik vs Comp.",
                  controller: _selisih,
                  readOnly: true,
                  inputFormat: InputFormat.currency,
                ),
                SizedBox(height: 24.h),
                ButtonWidget(
                  elevation: 0,
                  size: Size.fromHeight(56.h),
                  label: const Text(
                    "Selanjutnya",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final data = DanaCurrent(
                        salesComputer: _compValue,
                        salesFisik: _fisikValue,
                        selisih: _selisihValue,
                      );

                      context.read<TempAuditCubit>().setDanaCurrent(data);
                      widget.pageController.animateToPage(1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
