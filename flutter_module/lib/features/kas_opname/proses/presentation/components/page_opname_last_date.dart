import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../../core/appstate/app_state.dart';
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
import '../../domain/entities/summary_audit.dart';
import '../cubit/temp_audit_cubit.dart';
import '../cubit/upload_data_opname_cubit.dart';

class PageOpnameLastDate extends StatefulWidget {
  const PageOpnameLastDate({
    Key? key,
    required this.pageController,
    this.danaLast,
    required this.master,
  }) : super(key: key);

  final PageController pageController;
  final DanaLastDay? danaLast;
  final MasterOpname master;

  @override
  State<PageOpnameLastDate> createState() => _PageOpnameLastDateState();
}

class _PageOpnameLastDateState extends State<PageOpnameLastDate> {
  final TextEditingController _computer = TextEditingController();

  final TextEditingController _selisih = TextEditingController();
  final ListKursetNotifier _fisikNotifier = ListKursetNotifier();
  late Debouncer debouncer;
  final dateFormat = DateFormat("dd-MM-yyyy");
  final formKey = GlobalKey<FormState>();
  double _compValue = 0.0;
  double _fisikValue = 0.0;
  double _selisihValue = 0.0;

  @override
  void initState() {
    super.initState();
    debouncer = Debouncer(const Duration(milliseconds: 500));
    _compValue = widget.master.kurangSetor
            ?.fold(0.0, (value, e) => value! + e.nominal!) ??
        0.0;
    _computer.text = _compValue.toCurrencyFormat;
    initKurset();
    setSelisih();
    setListener();
  }

  @override
  void dispose() {
    _fisikNotifier.dispose();
    _selisih.dispose();
    _computer.dispose();
    super.dispose();
  }

  void setListener() {
    _fisikNotifier.addListener(() {
      final nominal = _fisikNotifier.value;
      final value = nominal.fold(0.0, (value, e) => value + (e.nominal ?? 0.0));
      setFisikValue(value);
    });

    _computer.addListener(() {
      setCompValue(_computer.text);
    });
  }

  void initKurset() {
    if (widget.master.kurangSetor != null &&
        widget.master.kurangSetor!.isNotEmpty) {
      for (var e in widget.master.kurangSetor!) {
        final nominal = widget.danaLast?.salesFisik
                ?.firstWhere((d) => d.tanggal.isSame(e.tanggal))
                .nominal ??
            0.0;

        final kurset = KurangSetor(tanggal: e.tanggal, nominal: nominal);
        _fisikNotifier.add(kurset);
      }
    }
    _fisikValue = widget.danaLast?.salesFisik
            ?.fold(0.0, (value, e) => value! + (e.nominal ?? 0.0)) ?? 0.0;
  }

  void setCompValue(String value) {
    if (value.isNotEmpty) {
      _compValue = value.fromCurrencyFormat;
      setSelisih();
    }
  }

  void setFisikValue(double value) {
    _fisikValue = value;
    setSelisih();
  }

  void setSelisih() {
    _selisihValue = (_fisikValue - _compValue);
    _selisih.text = _selisihValue.toCurrencyFormat;
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h, bottom: 20.w),
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
                      "SO Dana Belum Setor",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                    SizedBox(height: 24.h),
                    TextFieldWidget(
                      label: "Sales Computer Belum Setor",
                      controller: _computer,
                      readOnly: true,
                      inputFormat: InputFormat.currency,
                      validator: RequiredValidator(
                          errorMessage: "Data tidak boleh kosong"),
                      /*onChanged: setCompValue,*/
                    ),
                    ...generateTextField,
                    SizedBox(height: 16.h),
                    TextFieldWidget(
                      label: "Selisih",
                      controller: _selisih,
                      readOnly: true,
                      inputFormat: InputFormat.currency,
                    ),
                    SizedBox(height: 24.h),
                    BlocBuilder<UploadDanaOpnameCubit, AppState<SummaryAudit>>(
                      builder: (context, state) => ButtonWidget(
                        isLoading: state.isLoading,
                        elevation: 0,
                        size: Size(120.w, 56.h),
                        label: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.cloud_upload_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10.w),
                            const Text(
                              "Upload",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            final data = DanaLastDay(
                              salesComputer: _compValue,
                              salesFisik: _fisikNotifier.value,
                              selisih: _selisihValue,
                            );

                            context.read<TempAuditCubit>()
                              ..setDataLast(data)
                              ..completed();
                          }
                        },
                      ),
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
                        final data = DanaLastDay(
                          salesComputer: _compValue,
                          salesFisik: _fisikNotifier.value,
                          selisih: _selisihValue,
                        );

                        context.read<TempAuditCubit>().setDataLast(data);
                        widget.pageController.animateToPage(2,
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
      },
    );
  }

  List<Widget> get generateTextField {
    if (widget.master.kurangSetor == null) {
      return [
        Padding(
          padding: EdgeInsets.only(top: 16.h),
          child: TextFieldWidget(
            label: "Sales fisik",
            inputFormat: InputFormat.currency,
            initialValue: "Rp 0",
            validator:
                RequiredValidator(errorMessage: "Data tidak boleh kosong"),
            onChanged: (value) {
              final kurset = KurangSetor(nominal: value.fromCurrencyFormat);
              _fisikNotifier.add(kurset);
            },
          ),
        ),
      ];
    }

    return widget.master.kurangSetor!.map((e) {
      final nominal = widget.danaLast?.salesFisik
          ?.firstWhere((d) => d.tanggal.isSame(e.tanggal))
          .nominal
          .toCurrencyFormat;

      return Padding(
        padding: EdgeInsets.only(top: 16.h),
        child: TextFieldWidget(
          label: "Sales tgl ${dateFormat.format(e.tanggal!)}",
          inputFormat: InputFormat.currency,
          initialValue: nominal ?? "Rp 0",
          validator: RequiredValidator(errorMessage: "Data tidak boleh kosong"),
          onChanged: (value) {
            final kurset = KurangSetor(
                tanggal: e.tanggal, nominal: value.fromCurrencyFormat);
            _fisikNotifier.update(kurset);
          },
        ),
      );
    }).toList();
  }
}

class ListKursetNotifier extends ValueNotifier<List<KurangSetor>> {
  ListKursetNotifier({List<KurangSetor>? value})
      : super(value ?? <KurangSetor>[]);

  void add(KurangSetor valueToAdd) {
    value = [...value, valueToAdd];
  }

  void update(KurangSetor valueToUpdate) {
    final index =
        value.indexWhere((e) => e.tanggal.isSame(valueToUpdate.tanggal));
    if (index >= 0) {
      final oldValue = value[index];
      final newValue = oldValue.copyWith(nominal: valueToUpdate.nominal);
      value[index] = newValue;

      value = List.from(value);
    }
  }

  void remove(KurangSetor valueToRemove) {
    value = value.where((e) => e != valueToRemove).toList();
  }
}
