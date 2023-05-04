import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/widget/app_sizer/app_sizer.dart';
import '../../../../common/presentation/components/button_widget.dart';

enum ChoiceValue {
  yes("Ya"),
  no("Tidak");

  final String value;
  const ChoiceValue(this.value);

  @override
  String toString() => value;
}

class ChoiceCardWidget extends StatefulWidget {
  const ChoiceCardWidget({
    Key? key,
    required this.title,
    this.initialChoice,
    this.showPrevButton = true,
    this.onChoice,
    this.onPrev,
    this.onNext,
  }) : super(key: key);

  final ChoiceValue? initialChoice;
  final String title;
  final bool showPrevButton;
  final Function(ChoiceValue?)? onChoice;
  final VoidCallback? onPrev;
  final VoidCallback? onNext;

  @override
  State<ChoiceCardWidget> createState() => _ChoiceCardWidgetState();
}

class _ChoiceCardWidgetState extends State<ChoiceCardWidget> {
  ChoiceValue? choice;

  @override
  void initState() {
    super.initState();
    choice = widget.initialChoice;
  }

  @override
  void didUpdateWidget(covariant ChoiceCardWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialChoice != oldWidget.initialChoice) {
      choice = widget.initialChoice;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h, bottom: 35.h),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(20.w),
        shadowColor: ColorConstants.shadowColor,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
          child: Column(
            children: [
              Text(
                widget.title,
                style: GoogleFonts.nunito(
                    fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Radio<ChoiceValue>(
                    value: ChoiceValue.yes,
                    groupValue: choice,
                    activeColor: ColorConstants.backgroundColor,
                    onChanged: ((value) {
                      setState(() {
                        widget.onChoice?.call(value);
                        choice = value;
                      });
                    }),
                  ),
                  Text(ChoiceValue.yes.toString())
                ],
              ),
              Row(
                children: [
                  Radio<ChoiceValue>(
                    value: ChoiceValue.no,
                    groupValue: choice,
                    activeColor: ColorConstants.backgroundColor,
                    onChanged: ((value) {
                      setState(() {
                        widget.onChoice?.call(value);
                        choice = value;
                      });
                    }),
                  ),
                  Text(ChoiceValue.no.toString())
                ],
              ),
              SizedBox(height: 24.h),
              ButtonWidget(
                elevation: 0,
                color: ColorConstants.backgroundColor,
                onPressed: widget.onNext,
                size: Size.fromHeight(56.h),
                label: const Text(
                  "Selanjutnya",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 8.h),
              if (widget.showPrevButton)
                ButtonWidget(
                  elevation: 0,
                  color: Colors.white,
                  side: BorderSide(
                      width: 1.w, color: ColorConstants.backgroundColor),
                  onPressed: widget.onPrev,
                  size: Size.fromHeight(56.h),
                  label: Text(
                    "Kembali",
                    style: TextStyle(
                      color: ColorConstants.backgroundColor,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
