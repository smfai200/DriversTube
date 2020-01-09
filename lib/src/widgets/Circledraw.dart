import 'package:drivertube/colors/colors.dart';
import 'package:flutter/material.dart';

class CircleDraw extends CustomPainter {
 
  @override
  void paint(Canvas canvas, Size size) {
    Paint inerpaint = Paint()
      ..color = Colors.black12
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 10.0;
     
    Offset innercentre = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(innercentre, size.width / 2.2, inerpaint);
    Paint paint = Paint()
      ..color = Color(0xFF4E586E)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    Offset centre = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(centre, size.width / 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}