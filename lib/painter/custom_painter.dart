import 'package:flutter/cupertino.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();

    paint.color = ColorsApp.purple128;
    paint.isAntiAlias;

    Path path = Path();
    path.moveTo(0, size.height * 0.8);

    path.quadraticBezierTo(
      size.width * 0.7,
      size.height*1.1,
      size.width ,
      size.height*0.8,
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
