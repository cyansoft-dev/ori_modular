import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/constants/value_constants.dart';
import '../../../../../core/utils/currency_input_formatter.dart';
import '../../../../../core/utils/debouncer.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../core/utils/validator.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../common/presentation/components/button_widget.dart';
import '../../../../common/presentation/components/text_field_widget.dart';
import '../../../menu/domain/entities/master_opname.dart';
import '../../domain/entities/data_audit.dart';
import '../cubit/temp_audit_cubit.dart';

class PageOpnameDanaKas extends StatefulWidget {
  const PageOpnameDanaKas({
    Key? key,
    required this.pageController,
    this.danaKas,
    required this.master,
  }) : super(key: key);

  final PageController pageController;
  final DanaKas? danaKas;
  final MasterOpname master;

  @override
  State<PageOpnameDanaKas> createState() => _PageOpnameDanaKasState();
}

class _PageOpnameDanaKasState extends State<PageOpnameDanaKas> {
  late Debouncer debouncer;
  final TextEditingController _kasByFinance = TextEditingController();
  final TextEditingController _kasBrangkas = TextEditingController();
  final TextEditingController _kasKasir = TextEditingController();
  final TextEditingController _koin = TextEditingController();
  final TextEditingController _selisih = TextEditingController();

  double _kasFinValue = 0.0;
  double _kasBrankasValue = 0.0;
  double _kasKasirValue = 0.0;
  double _koinValue = 0.0;
  double _selisihValue = 0.0;

  final formKey = GlobalKey<FormState>();
  final keyboardType = const TextInputType.numberWithOptions();
  final inputFormatter = [
    FilteringTextInputFormatter.digitsOnly,
    CurrencyInputFormatter(),
  ];

  @override
  void initState() {
    super.initState();
    debouncer = Debouncer(const Duration(milliseconds: 500));

    _kasFinValue = widget.master.danaKas ?? 0.0;
    _kasByFinance.text = _kasFinValue.toCurrencyFormat;

    _kasBrankasValue = widget.danaKas?.kasBrankas ?? 0.0;
    _kasBrangkas.text = _kasBrankasValue.toCurrencyFormat;

    _kasKasirValue = widget.danaKas?.kasKasir ?? 0.0;
    _kasKasir.text = _kasKasirValue.toCurrencyFormat;

    _koinValue = widget.danaKas?.uangKoin ?? 0.0;
    _koin.text = _koinValue.toCurrencyFormat;

    setSelisih();
    setListener();
  }

  @override
  void dispose() {
    _kasByFinance.dispose();
    _kasBrangkas.dispose();
    _kasKasir.dispose();
    _koin.dispose();
    _selisih.dispose();
    super.dispose();
  }

  void setListener() {
    _kasByFinance.addListener(() {
      setKasFinValue(_kasByFinance.text);
    });
    _kasBrangkas.addListener(() {
      setKasBrangkas(_kasBrangkas.text);
    });
    _kasKasir.addListener(() {
      setKasKasir(_kasKasir.text);
    });
    _koin.addListener(() {
      setKoin(_koin.text);
    });
  }

  void setKasFinValue(String value) {
    if (value.isNotEmpty) {
      _kasFinValue = value.fromCurrencyFormat;
      setSelisih();
    }
  }

  void setKasBrangkas(String value) {
    if (value.isNotEmpty) {
      _kasBrankasValue = value.fromCurrencyFormat;
      setSelisih();
    }
  }

  void setKasKasir(String value) {
    if (value.isNotEmpty) {
      _kasKasirValue = value.fromCurrencyFormat;
      setSelisih();
    }
  }

  void setKoin(String value) {
    if (value.isNotEmpty) {
      _koinValue = value.fromCurrencyFormat;
      setSelisih();
    }
  }

  void setSelisih() {
    _selisihValue =
        (_kasBrankasValue + _kasKasirValue + _koinValue) - _kasFinValue;
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
                  "SO Dana Kas Toko",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                SizedBox(height: 24.h),
                TextFieldWidget(
                  label: "Kas Toko Menurut Finance",
                  controller: _kasByFinance,
                  readOnly: true,
                  inputFormat: InputFormat.currency,
                  validator: RequiredValidator(
                      errorMessage: "Data tidak boleh kosong"),
                  /*onChanged: setKasFinValue,*/
                ),
                SizedBox(height: 16.h),
                TextFieldWidget(
                  label: "Fisik Dana Kas di Brankas",
                  controller: _kasBrangkas,
                  inputFormat: InputFormat.currency,
                  validator: RequiredValidator(
                      errorMessage: "Data tidak boleh kosong"),
                  /*onChanged: setKasBrangkas,*/
                ),
                SizedBox(height: 16.h),
                TextFieldWidget(
                  label: "Fisik Dana Kas di Kasir",
                  controller: _kasKasir,
                  inputFormat: InputFormat.currency,
                  validator: RequiredValidator(
                      errorMessage: "Data tidak boleh kosong"),
                  /*onChanged: setKasKasir,*/
                ),
                SizedBox(height: 16.h),
                TextFieldWidget(
                  label: "Tukar Uang Koin ke Finance",
                  controller: _koin,
                  inputFormat: InputFormat.currency,
                  validator: RequiredValidator(
                      errorMessage: "Data tidak boleh kosong"),
                  /*onChanged: setKoin,*/
                ),
                SizedBox(height: 16.h),
                TextFieldWidget(
                  label: "Selisih",
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
                      final data = DanaKas(
                        kasFinance: _kasFinValue,
                        kasBrankas: _kasBrankasValue,
                        kasKasir: _kasKasirValue,
                        uangKoin: _koinValue,
                        selisih: _selisihValue,
                      );
                      context.read<TempAuditCubit>().setDanaKas(data);
                      widget.pageController.animateToPage(2,
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
                  size: Size.fromHeight(56.h),
                  label: Text(
                    "Kembali",
                    style: TextStyle(color: ColorConstants.backgroundColor),
                  ),
                  onPressed: () {
                    final data = DanaKas(
                      kasFinance: _kasFinValue,
                      kasBrankas: _kasBrankasValue,
                      kasKasir: _kasKasirValue,
                      uangKoin: _koinValue,
                      selisih: _selisihValue,
                    );
                    context.read<TempAuditCubit>().setDanaKas(data);
                    widget.pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
