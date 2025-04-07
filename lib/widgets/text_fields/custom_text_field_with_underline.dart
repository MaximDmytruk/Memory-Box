import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

class CustomTextFieldWithUnderline extends StatelessWidget {
  const CustomTextFieldWithUnderline({
    super.key,
    required this.nameTextController,
  });

  final TextEditingController nameTextController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: customTextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w400,
        color: ColorsApp.black58,
      ),
      controller: nameTextController,
      textAlign: TextAlign.center,
      cursorColor: ColorsApp.black58,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorsApp.black58WithOpaciti05,
            width: 2,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorsApp.black58WithOpaciti05,
            width: 2,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorsApp.black58WithOpaciti05,
            width: 2,
          ),
        ),
      ),
    );
  }
}
