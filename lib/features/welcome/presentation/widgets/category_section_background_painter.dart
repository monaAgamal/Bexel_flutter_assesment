import 'package:bexel_assesment/core/app_theme/app_colors_palate.dart';
import 'package:flutter/material.dart';

class CategorySectionBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = cardColor;
    var path = Path();
    path.moveTo(size.width, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height / 5);
    path.lineTo(size.width * 0.5, size.height / 100);
    path.lineTo(0, size.height / 5);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
