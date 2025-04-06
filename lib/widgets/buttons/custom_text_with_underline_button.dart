import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

class CustomTextWithUnderlineButton extends StatelessWidget {
  final String name;
  final Color color;
  final double fontSize;
  final GestureTapCallback? onTap;

  const CustomTextWithUnderlineButton({
    super.key,
    required this.name,
    this.color = ColorsApp.white246,
    this.fontSize = 14.0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25.0),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: color,
            ),
          ),
        ),
        child: Text(
          name,
          style: customTextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
      ),
    );
  }
}
