import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback? onTap;

  const CustomTextButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        overlayColor: ColorsApp.purple140.withAlpha(250),
      ),
      child: Text(
        'Пізніше',
        style: robotoTextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 2.0,
          color: ColorsApp.black58,
        ),
      ),
    );
  }
}
