import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  const GradientIcon(
    this.icon, {
    super.key,
    this.size,
    required this.gradient,
  });

  final IconData icon;
  final double? size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    final double iconSize = size ?? 24.0;

    return ShaderMask(
      blendMode: BlendMode.srcIn,
      child: Icon(
        icon,
        size: iconSize,
        color: Colors.white,
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, bounds.width, bounds.height);
        return gradient.createShader(rect);
      },
    );
  }
}
