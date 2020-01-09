import 'package:drivertube/colors/colors.dart';
import 'package:flutter/material.dart';

class RetroSliderThumbShape extends SliderComponentShape {
  final double thumbRadius;

  RetroSliderThumbShape(this.thumbRadius);
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    // TODO: implement getPreferredSize
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(PaintingContext context, Offset center, {Animation<double> activationAnimation, Animation<double> enableAnimation, bool isDiscrete, TextPainter labelPainter, RenderBox parentBox, SliderThemeData sliderTheme, TextDirection textDirection, double value}) {
  final Canvas canvas = context.canvas;
   final rect = Rect.fromCircle(center: center, radius: thumbRadius);
 Paint inerpaint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 10.0;
      final rrect = RRect.fromRectAndRadius(
      Rect.fromPoints(
        Offset(rect.left, rect.top),
        Offset(rect.right, rect.bottom),
      ),
      Radius.circular(thumbRadius),
    );
    canvas.drawRRect(rrect, inerpaint);
    final rect2 = Rect.fromCircle(center: center, radius: thumbRadius+3);
Paint paint = Paint()
      ..color = Color(MyColors().Green)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6.0;
    //  Offset outer=Offset(rect.left/2,rect.top/2);

       final rrect2 = RRect.fromRectAndRadius(
      Rect.fromPoints(
        Offset(rect2.left, rect2.top),
        Offset(rect2.right, rect2.bottom),
      ),
      Radius.circular(thumbRadius+7),
    );
    canvas.drawRRect(rrect2,paint);
  
  }
 
}