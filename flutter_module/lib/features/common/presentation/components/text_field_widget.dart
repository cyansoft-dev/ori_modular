import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/utils/currency_input_formatter.dart';

enum InputFormat {
  currency,
  number,
}

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    Key? key,
    this.label,
    this.hint,
    this.hintStyle,
    this.helper,
    this.helperStyle,
    this.initialValue,
    this.controller,
    this.validator,
    this.readOnly = false,
    this.expands = false,
    this.obscureText = false,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.inputFormat,
    this.keyboardType,
    this.inputFormatters,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onTap,
  }) : super(key: key);

  final String? label;
  final String? hint;
  final TextStyle? hintStyle;
  final String? helper;
  final TextStyle? helperStyle;
  final String? initialValue;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool readOnly;
  final bool expands;
  final bool obscureText;
  final EdgeInsets scrollPadding;
  final InputFormat? inputFormat;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final Function()? onTap;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  bool isRefresh = false;

  @override
  void initState() {
    super.initState();
    checkInputFormat();
  }

  @override
  void didUpdateWidget(covariant TextFieldWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget != oldWidget) {
      isRefresh = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: widget.expands,
      maxLines: !widget.expands ? 1 : null,
      initialValue: widget.initialValue,
      controller: widget.controller,
      readOnly: widget.readOnly,
      obscureText: widget.obscureText,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      textAlign: TextAlign.start,
      textAlignVertical: widget.expands ? TextAlignVertical.top : null,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(
            horizontal: 12.w, vertical: widget.expands ? 16.h : 0),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: widget.label,
        labelStyle:
            MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
          final Color color = states.contains(MaterialState.error)
              ? Theme.of(context).colorScheme.error
              : ColorConstants.fontColor;
          return TextStyle(
            color: color,
          );
        }),
        floatingLabelStyle:
            MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
          final Color color = states.contains(MaterialState.error)
              ? Theme.of(context).colorScheme.error
              : ColorConstants.fontColor;
          return TextStyle(color: color);
        }),
        prefixIcon: widget.prefixIcon,
        prefixIconColor:
            MaterialStateColor.resolveWith((Set<MaterialState> states) {
          return states.contains(MaterialState.error)
              ? Theme.of(context).colorScheme.error
              : Theme.of(context).iconTheme.color!;
        }),
        suffixIcon: widget.suffixIcon,
        suffixIconColor:
            MaterialStateColor.resolveWith((Set<MaterialState> states) {
          return states.contains(MaterialState.error)
              ? Theme.of(context).colorScheme.error
              : Theme.of(context).iconTheme.color!;
        }),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(width: 1.w, color: ColorConstants.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(width: 2.w, color: ColorConstants.borderColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(width: 1.w, color: ColorConstants.iconColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(width: 2.w, color: ColorConstants.iconColor),
        ),
        hintText: widget.hint,
        hintStyle: widget.hintStyle,
        helperText: widget.helper,
        helperStyle: widget.helperStyle,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (str) {
        if (isRefresh) {
          isRefresh = false;
          return null;
        }
        return widget.validator?.call(str);
      },
      onChanged: widget.onChanged,
      onTap: widget.onTap,
    );
  }

  checkInputFormat() {
    if (widget.inputFormat == InputFormat.currency) {
      keyboardType = const TextInputType.numberWithOptions();
      inputFormatters = [
        FilteringTextInputFormatter.digitsOnly,
        CurrencyInputFormatter(),
      ];
    }

    if (widget.inputFormat == InputFormat.number) {
      keyboardType = const TextInputType.numberWithOptions();
      inputFormatters = [
        FilteringTextInputFormatter.digitsOnly,
      ];
    }
  }
}
