import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

class CirclePainter extends CustomPainter {
  final String? name;
  final String? secondName;

  CirclePainter({
    super.repaint,
    this.name,
    this.secondName,
  });

  @override
  void paint(
    Canvas canvas,
    Size size,
  ) {
    final Paint paint = Paint();

    paint.color = ColorsApp.purple128;
    paint.isAntiAlias = true;

    //Background
    Path path = Path();
    path.moveTo(0, size.height * 0.72);

    path.quadraticBezierTo(
      size.width * 0.52,
      size.height * 1.005,
      size.width,
      size.height * 0.85,
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);

    //Main Text
    TextSpan textSpan = TextSpan(
      text: name,
      style: robotoTextStyle(
        color: ColorsApp.white,
        fontSize: 48.0,
        fontWeight: FontWeight.w700,
        letterSpacing: 5.0,
      ),
    );

    TextPainter textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();

    Offset offset = Offset(
      (size.width - textPainter.width) / 2,
      (size.height - textPainter.height) / 2,
    );

    textPainter.paint(canvas, offset);

    //Second Text
    TextSpan textSpan2 = TextSpan(
        text: secondName,
        style: robotoTextStyle(
          color: ColorsApp.white,
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.0,
        ));

    TextPainter textPainter2 = TextPainter(
      text: textSpan2,
      textAlign: TextAlign.right,
      textDirection: TextDirection.ltr,
    );

    textPainter2.layout();

    Offset offset2 = Offset(
      (size.width - textPainter.width) / 2 +
          textPainter.width -
          textPainter2.width,
      (size.height - textPainter.height) / 2 + textPainter.height + 2,
    );

    // Малюємо другий текст
    textPainter2.paint(canvas, offset2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
