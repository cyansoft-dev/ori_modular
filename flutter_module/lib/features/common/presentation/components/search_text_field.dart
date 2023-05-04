import 'dart:async';

import 'package:flutter/material.dart';

import '/core/widget/app_sizer/app_sizer.dart';

typedef OnChanged = Function(String);

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
    this.hintText,
    this.onChanged,
    this.fillColor,
    this.side,
  });
  final String? hintText;
  final OnChanged? onChanged;
  final Color? fillColor;
  final BorderSide? side;
  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.hintText ?? "Search",
        filled: true,
        fillColor: widget.fillColor ?? Colors.white,
        suffixIconConstraints: BoxConstraints(minHeight: 25.w, minWidth: 25.w),
        contentPadding: EdgeInsetsDirectional.only(start: 20.w),
        suffixIcon: Padding(
          padding: EdgeInsetsDirectional.only(end: 20.w),
          child: const Icon(Icons.search_rounded),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide: widget.side ?? BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide: widget.side ?? BorderSide.none,
        ),
      ),
      onChanged: widget.onChanged == null
          ? null
          : (value) {
              if (_debounce?.isActive ?? false) _debounce?.cancel();

              _debounce = Timer(
                const Duration(milliseconds: 500),
                () => widget.onChanged!(value),
              );
            },
    );
  }
}
