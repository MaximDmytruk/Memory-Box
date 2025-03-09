import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';

class SplashTwo extends StatelessWidget {
  const SplashTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorsApp.purple128,
            ColorsApp.orange241,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 0.9],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8.0,
        children: [
          Text(
            'MemoryBox',
            style: robotoTextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w700,
              color: ColorsApp.white246,
              letterSpacing: 4.0,
            ),
          ),
          SvgPicture.asset(
            IconsApp.microphoneWithFrame,
            height: 46.0,
            width: 46.0,
          ),
        ],
      ),
    );
  }
}
