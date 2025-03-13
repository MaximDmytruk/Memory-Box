import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

class CustomTextField extends StatelessWidget {
  final String? prefixText;
  

  const CustomTextField({
    super.key,
    this.prefixText,
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
       
        style: robotoTextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
          color: ColorsApp.black58,
        ),
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
