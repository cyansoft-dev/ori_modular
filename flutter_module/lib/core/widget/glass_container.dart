import 'dart:ui';

import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;
  final double start;
  final double end;
  final double? height;
  final double? width;
  final double blur;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final BoxShape shape;
  final BoxBorder? border;
  final Color? color;

  const GlassContainer({
    Key? key,
    required this.child,
    required this.start,
    required this.end,
    this.blur = 3,
    this.height,
    this.width,
    this.padding,
    this.borderRadius,
    this.shape = BoxShape.rectangle,
    this.border,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur * 2),
        child: Container(
          height: height,
          width: width,
          padding: padding,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                (color ?? Colors.white).withOpacity(start),
                (color ?? Colors.white).withOpacity(end),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            borderRadius: borderRadius,
            shape: shape,
            border: border ??
                Border.all(
                  width: 1.5,
                  color: (color ?? Colors.white).withOpacity(0.2),
                ),
          ),
          child: child,
        ),
      ),
    );
  }
}
