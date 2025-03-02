import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

class SplashEight extends StatelessWidget {
  const SplashEight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorsApp.purple140,
            ColorsApp.blue103,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 0.9],
        ),
      ),
      child: Center(
        child: Text(
          'MemoryBox',
          style: robotoTextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.w700,
            color: ColorsApp.white246,
            letterSpacing: 4.0,
          ),
        ),
      ),
    );
  }
}
