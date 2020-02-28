import 'package:flutter/material.dart';

class WaterPainter extends CustomPainter {

@override
void paint(Canvas canvas, Size size) {
  Paint paint = Paint()
    ..color = Colors.red
    ..style = PaintingStyle.stroke
    ..strokeWidth = 8.0;

  Path path = Path();
  path.addRRect(
      RRect.fromRectAndRadius(Rect.fromLTWH(size.width, size.height, size.width, size.height), Radius.circular(16))
  );
  canvas.drawPath(path, paint);}

@override
bool shouldRepaint(WaterPainter oldDelegate) {
    return true;
}

@override
bool shouldRebuildSemantics(WaterPainter oldDelegate) {
     return true;
}
}
