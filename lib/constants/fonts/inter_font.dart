import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';

TextStyle interTextStyle({
  double fontSize = 14.0,
  FontWeight fontWeight = FontWeight.w400,
  Color color = ColorsApp.black,
  double? letterSpacing,
}) {
  return GoogleFonts.inter(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    letterSpacing: letterSpacing,
  );
}
