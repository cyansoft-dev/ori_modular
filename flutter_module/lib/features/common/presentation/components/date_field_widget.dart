import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/utils/extensions.dart';
import 'text_field_widget.dart';

class DateFieldWidget extends StatefulWidget {
  const DateFieldWidget({
    Key? key,
    this.controller,
    required this.title,
    this.dates,
    this.validator,
    this.hint,
    this.hintStyle,
    this.helper,
    this.helperStyle,
  }) : super(key: key);

  final String title;
  final TextEditingController? controller;
  final List<DateTime>? dates;
  final String? Function(String?)? validator;
  final String? hint;
  final TextStyle? hintStyle;
  final String? helper;
  final TextStyle? helperStyle;

  @override
  State<DateFieldWidget> createState() => _DateFieldWidgetState();
}

class _DateFieldWidgetState extends State<DateFieldWidget> {
  late List<DateTime> _dates;
  final DateTime now = DateTime.now();
  @override
  void initState() {
    super.initState();
    _dates = [...?widget.dates?..sort((a, b) => a.compareTo(b))];
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldWidget(
      readOnly: true,
      label: widget.title,
      hint: widget.hint,
      hintStyle: widget.hintStyle,
      helper: widget.helper,
      helperStyle: widget.helperStyle,
      validator: widget.validator,
      controller: widget.controller,
      suffixIcon: const Icon(Iconsax.calendar_search),
      onTap: () async {
        await _selectDate(context);
      },
    );
  }

  bool _predicate(DateTime date) {
    if (_dates.isNotEmpty) {
      return _dates.where((e) => e.isSame(date)).isNotEmpty;
    }
    return true;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _dates.isEmpty ? now : _dates.last,
        selectableDayPredicate: _predicate,
        firstDate: _dates.isEmpty ? DateTime(now.year, 1, 1) : _dates.first,
        lastDate: _dates.isEmpty ? now : _dates.last,
        helpText: 'Pilih Tanggal Sales', // Can be used as title
        cancelText: 'Batal',
        confirmText: 'Pilih',
        builder: (context, child) {
          return Theme(
              data: ThemeData().copyWith(
                colorScheme: ColorScheme.light(
                  primary: ColorConstants.backgroundColor,
                  onPrimary: Colors.white,
                  surface: ColorConstants.backgroundColor,
                  onSurface: ColorConstants.fontColor,
                ),
                disabledColor: Colors.grey.shade100,
              ),
              child: child!);
        });

    if (picked != null) {
      widget.controller?.text = DateFormat("dd-MM-yyyy").format(picked);
    }
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
