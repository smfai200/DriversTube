import 'package:drivertube/colors/colors.dart';
import 'package:flutter/material.dart';

class RetroSliderValue extends SliderComponentShape {
  final double thumbRadius;

  RetroSliderValue(this.thumbRadius);
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
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 10.0;
      final rrect = RRect.fromRectAndRadius(
      Rect.fromPoints(
        Offset(rect.left-15, rect.top-28),
        Offset(rect.right+15, rect.bottom-25),
      ),
      Radius.circular(4),
    );
    canvas.drawRRect(rrect, inerpaint);
    
  }
 
}