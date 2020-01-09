
import 'package:flutter/material.dart';

class DistanceShape extends CustomPainter {
  double strokes;
  DistanceShape(this.strokes);
  @override
  void paint(Canvas canvas, Size size) {
    Paint inerpaint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 10.0;
     
    Offset innercentre = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(innercentre, size.width / 2.2, inerpaint);
    Paint paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokes;

    Offset centre = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(centre, size.width / 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}