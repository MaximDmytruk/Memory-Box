import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

// class CustomTextButton extends StatelessWidget {
//   final VoidCallback? onTap;

//   const CustomTextButton({
//     super.key,
//     this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: onTap,
//       style: TextButton.styleFrom(
//         overlayColor: ColorsApp.purple140.withAlpha(250),
//       ),
//       child: Text(
//         'Пізніше',
//         style: customTextStyle(
//           fontSize: 24.0,
//           fontWeight: FontWeight.w500,
//           letterSpacing: 2.0,
//           color: ColorsApp.black58,
//         ),
//       ),
//     );
//   }
// }

class CustomTextButton extends StatelessWidget {
  final String name;
  final VoidCallback? onTap;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final double? letterSpacing;
  const CustomTextButton({
    super.key,
    required this.name,
    this.onTap,
    this.fontSize = 14.0,
    this.color = ColorsApp.black58,
    this.fontWeight = FontWeight.w500,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25.0),
      onTap: onTap ?? () {},
      child: Text(
        name,
        style: customTextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          color: color,
          letterSpacing: letterSpacing,
        ),
      ),
    );
  }
}
