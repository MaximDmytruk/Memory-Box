import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

class ContainerInfo extends StatelessWidget {
  final String text;

  const ContainerInfo({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 21.0,
      ),
      decoration: BoxDecoration(
        color: ColorsApp.white246,
        boxShadow: [
          BoxShadow(
            color: ColorsApp.black.withAlpha(30),
            blurRadius: 7.0,
            spreadRadius: 0.0,
            offset: Offset(
              0,
              4.0,
            ),
          ),
        ],
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      child: Text(
        text,
        style: robotoTextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
