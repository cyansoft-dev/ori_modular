import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/utils/validator.dart';
import '../../../../core/widget/app_sizer/app_sizer.dart';

class PassTextField extends StatefulWidget {
  const PassTextField({super.key, this.value, this.onChanged});
  final String? value;
  final Function(String)? onChanged;

  @override
  State<PassTextField> createState() => _PassTextFieldState();
}

class _PassTextFieldState extends State<PassTextField> {
  ValueNotifier<bool> isShown = ValueNotifier(false);

  @override
  void dispose() {
    isShown.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isShown,
      builder: (context, value, _) => TextFormField(
        obscureText: !value,
        scrollPadding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        validator:
            RequiredValidator(errorMessage: "Password tidak boleh kosong"),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 0),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: "Password",
          labelStyle:
          MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
            final Color color = states.contains(MaterialState.error)
                ? Theme.of(context).colorScheme.error
                : ColorConstants.fontColor;
            return TextStyle(
              color: color,
            );
          }),
          hintText: "input password anda",
          suffixIcon: InkResponse(
            radius: 5.r,
            onTap: () {
              isShown.value = !value;
            },
            child: value
                ? const Icon(Icons.visibility_off_outlined)
                : const Icon(Icons.visibility_outlined),
          ),
          suffixIconColor:
              MaterialStateColor.resolveWith((Set<MaterialState> states) {
            return states.contains(MaterialState.error)
                ? Theme.of(context).colorScheme.error
                : Theme.of(context).iconTheme.color!;
          }),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide:
                BorderSide(width: 1.w, color: ColorConstants.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide:
                BorderSide(width: 2.w, color: ColorConstants.borderColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(width: 1.w, color: ColorConstants.iconColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(width: 2.w, color: ColorConstants.iconColor),
          ),
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}
