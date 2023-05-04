
import 'dart:ui';

import 'package:flutter/material.dart';

class PointOverlay extends CustomPainter {
  final List<Offset> points;

  PointOverlay(this.points);
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = const Color(0xff63aa65)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;

    canvas.drawPoints(PointMode.points, points, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
