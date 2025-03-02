import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

class SplashOne extends StatelessWidget {
  const SplashOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorsApp.purple128,
              Color.fromRGBO(195, 132, 200, 1),
              Color.fromRGBO(225, 144, 175, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 0.6, 0.9],
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 17.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(75.0),
              color: ColorsApp.white,
            ),
            child: Text(
              'MemoryBox',
              style: robotoTextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
                color: ColorsApp.purple128,
                letterSpacing: 6.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}