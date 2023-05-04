import 'package:flutter/material.dart';
import 'dart:math';

class DotPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Dots extends Pattern {
  final Color bgColor;
  final Color fgColor;
  final int featuresCount;

  Dots({required this.bgColor, required this.fgColor, this.featuresCount = 10});

  void paintWithPattern(
      Canvas canvas, double x, double y, double width, double height) {
    final maxDimension = max(width, height);
    var rectSide = maxDimension / featuresCount;
    var horizontalSquaresCount = width / rectSide;
    var verticalSquaresCount = height / rectSide;
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = bgColor;
    canvas.drawRect(Rect.fromLTWH(x, y, width, height), paint);

    var dx = 0.0, dy = 0.0;
    final dotsPath = Path();
    for (var j = 0; j < verticalSquaresCount; j++) {
      for (var i = 0; i < horizontalSquaresCount; i++) {
        paint
          ..style = PaintingStyle.fill
          ..color = fgColor;
        Rect oval = Rect.fromCircle(
            center: Offset(x + dx + rectSide / 2, y + dy + rectSide / 2),
            radius: rectSide / 4);
        dotsPath.addOval(oval);
        dx += rectSide;
      }
      dy += rectSide;
      dx = 0;
    }
    paint
      ..style = PaintingStyle.fill
      ..color = fgColor;
    canvas.drawPath(dotsPath, paint);
  }

  @override
  Iterable<Match> allMatches(String string, [int start = 0]) {
    throw UnimplementedError();
  }

  @override
  Match? matchAsPrefix(String string, [int start = 0]) {
    throw UnimplementedError();
  }
}
