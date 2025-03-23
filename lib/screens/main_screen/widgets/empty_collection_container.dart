import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/widgets/buttons/custom_text_with_underline_button.dart';

class EmptyCollectionContainer extends StatelessWidget {
  final String title;
  final bool buttonOn;
  final String? buttonTitle;
  final Color? backgroundColor;

  const EmptyCollectionContainer({
    super.key,
    required this.title,
    this.buttonOn = false,
    this.buttonTitle,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? ColorsApp.green113WithOpaciti075,
          borderRadius: BorderRadius.circular(
            30.0,
          ),
        ),
        child: Column(
          spacing: 37.0,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: customTextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: ColorsApp.white246,
              ),
              textAlign: TextAlign.center,
            ),
            if (buttonOn)
              CustomTextWithUnderlineButton(
                name: buttonTitle ?? 'Добавити',
              ),
          ],
        ),
      ),
    );
  }
}
