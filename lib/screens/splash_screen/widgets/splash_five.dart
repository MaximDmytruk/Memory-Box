import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

class SplashFive extends StatelessWidget {
  const SplashFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorsApp.purple128,
              ColorsApp.orange241,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
          ),
        ),
        child: Center(
          child: Text(
            'MemoryBox',
            style: robotoTextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.w700,
              color: ColorsApp.white246,
              letterSpacing: 3.0,
            ),
          ),
        ),
      ),
    );
  }
}
