import 'package:flutter/material.dart';

import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../core/constants/color_constants.dart';

typedef OnChanged = Function(String?);

class DropdownWidget extends StatefulWidget {
  const DropdownWidget(
      {Key? key,
      required this.label,
      this.hint,
      this.hintStyle,
      required this.items,
      this.validator,
      this.onChanged})
      : super(key: key);

  final String label;
  final String? hint;
  final TextStyle? hintStyle;
  final List<String> items;
  final String? Function(String?)? validator;
  final OnChanged? onChanged;

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  ValueNotifier<String?> selected = ValueNotifier(null);

  @override
  void didUpdateWidget(covariant DropdownWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget != oldWidget) {
      selected.value = null;
    }
  }

  @override
  void dispose() {
    widget.onChanged?.call(null);
    selected.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String?>(
      valueListenable: selected,
      builder: (context, value, _) {
        return FormField<String>(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: widget.validator,
          builder: (state) {
            final color = state.hasError
                ? Theme.of(context).colorScheme.error
                : ColorConstants.fontColor;

            return InputDecorator(
              isEmpty: value == null || value.isEmpty,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: widget.label,
                labelStyle: TextStyle(color: color),
                floatingLabelStyle: TextStyle(color: color),
                errorText: state.hasError ? state.errorText : null,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide:
                      BorderSide(width: 1.w, color: ColorConstants.borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                      width: 1.5.w, color: ColorConstants.borderColor),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide:
                      BorderSide(width: 1.w, color: ColorConstants.iconColor),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide:
                      BorderSide(width: 1.w, color: ColorConstants.iconColor),
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  dropdownColor: Colors.white,
                  hint: widget.hint != null
                      ? Text(widget.hint!, style: widget.hintStyle)
                      : null,
                  value: value,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: color,
                  ),
                  items: widget.items
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {
                    selected.value = value;
                    state.didChange(value);
                    widget.onChanged?.call(value);
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
