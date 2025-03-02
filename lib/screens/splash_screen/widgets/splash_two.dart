import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

class SplashTwo extends StatelessWidget {
  const SplashTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(128, 119, 228, 1),
            Color.fromRGBO(195, 132, 200, 1),
            Color.fromRGBO(225, 144, 175, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 0.6, 0.9],
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