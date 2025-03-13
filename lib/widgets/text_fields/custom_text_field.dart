import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

class CustomTextField extends StatelessWidget {
  final String? prefixText;
  final bool keyboardOnlyDigits;
  final TextAlign textAlign;
  final double letterSpacing;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({
    super.key,
    this.prefixText,
    this.keyboardOnlyDigits = false,
    this.textAlign = TextAlign.start,
    this.letterSpacing = 0,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsApp.white246,
        borderRadius: BorderRadius.circular(
          41.0,
        ),
        boxShadow: [
          BoxShadow(
            color: ColorsApp.black.withAlpha(
              20,
            ),
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        textAlign: textAlign,
        style: robotoTextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
          color: ColorsApp.black58,
          letterSpacing: letterSpacing,
        ),
        keyboardType:
            keyboardOnlyDigits ? TextInputType.phone : TextInputType.text,
        inputFormatters: [
          ...?inputFormatters,
        ],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 50.0,
            vertical: 20.0,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              41,
            ),
          ),
          prefixText: prefixText,
        ),
      ),
    );
  }
}
