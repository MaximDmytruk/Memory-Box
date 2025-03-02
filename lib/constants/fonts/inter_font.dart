import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';

TextStyle robotoTextStyle({
  double fontSize = 14.0,
  FontWeight fontWeight = FontWeight.w400,
  Color color = ColorsApp.black,
  double? letterSpacing,
}) {
  return GoogleFonts.roboto(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    letterSpacing: letterSpacing,
  );
}
