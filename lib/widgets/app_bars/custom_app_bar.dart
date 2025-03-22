import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onDrawerIconTap;
  final Widget? leadingChild;

  const CustomAppBar({
    super.key,
    required this.onDrawerIconTap,
    required this.title,
    this.leadingChild,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onDrawerIconTap,
          icon: SvgPicture.asset(
            IconsApp.menu,
          ),
        ),
        Text(
          title,
          style: customTextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.w700,
            color: ColorsApp.white246,
          ),
        ),
        leadingChild ??
            SizedBox(
              width: 50.0,
              height: 30.0,
            ),
      ],
    );
  }
}
