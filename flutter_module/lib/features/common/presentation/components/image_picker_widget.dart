import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_snap_camera/constants/config.dart';
import 'package:flutter_snap_camera/flutter_snap_camera.dart';
import 'package:iconsax/iconsax.dart';

import '/core/widget/app_sizer/app_sizer.dart';
import '../../../../core/constants/color_constants.dart';

typedef OnCapture = Function(File?);

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget(
      {Key? key,
      this.label,
      this.validator,
      this.initialImage,
      this.onCapture,
      this.backgroundColor,
      this.helperText,
      this.helperStyle,
      this.size,
      this.quality})
      : super(key: key);

  final String? label;
  final String? Function(String?)? validator;
  final File? initialImage;
  final OnCapture? onCapture;
  final Color? backgroundColor;
  final String? helperText;
  final TextStyle? helperStyle;
  final Size? size;
  final int? quality;

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  ValueNotifier<File?> imagePath = ValueNotifier(null);
  late Size _size;

  @override
  void initState() {
    super.initState();
    imagePath.value = widget.initialImage;
    _size = widget.size ?? const Size(double.infinity, double.infinity);
  }

  @override
  void didUpdateWidget(covariant ImagePickerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    imagePath.value = widget.initialImage;
  }

  @override
  void dispose() {
    imagePath.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<File?>(
      valueListenable: imagePath,
      builder: (context, img, child) {
        return FormField<String>(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          initialValue: img?.path,
          validator: widget.validator,
          builder: (state) {
            final color = state.hasError
                ? Theme.of(context).colorScheme.error
                : Theme.of(context).iconTheme.color!;

            return GestureDetector(
              onTap: () {
                final config = SnapCameraConfig(
                  quality: widget.quality ?? 100,
                  watermark: TextWatermark(
                    "ORI Administration",
                    offset: const Offset(15, 15),
                  ),
                );

                CameraView.snapImage(
                  context,
                  cameraConfig: config,
                ).then((data) {
                  imagePath.value = data;
                  widget.onCapture?.call(data);
                  state.didChange(data?.path);
                });
              },
              child: InputDecorator(
                expands: true,
                isEmpty: img == null || img.path.isEmpty,
                decoration: InputDecoration(
                  constraints: BoxConstraints.tightFor(
                      width: _size.width, height: _size.height),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  labelText:
                      img == null || img.path.isEmpty ? null : widget.label,
                  labelStyle: TextStyle(color: color),
                  helperText: widget.helperText,
                  helperStyle: widget.helperStyle,
                  floatingLabelStyle: TextStyle(color: color),
                  errorText: state.hasError ? state.errorText : null,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                        width: 1.w, color: ColorConstants.borderColor),
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
                child: img != null
                    ? Padding(
                        padding: EdgeInsets.all(20.w),
                        child: Image.file(img),
                      )
                    : Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(
                            Iconsax.camera,
                            size: 36.sp,
                            color: color,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            widget.label ?? "Tap to Capture Photo",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: color,
                            ),
                          )
                        ],
                      ),
              ),
            );
          },
        );
      },
    );
  }
}
