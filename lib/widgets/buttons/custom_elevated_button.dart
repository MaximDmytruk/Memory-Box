import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

class CustomElevatedButton extends StatelessWidget {
  final GestureTapCallback? onTap;

  const CustomElevatedButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(
          51.0,
        ),
        splashColor: ColorsApp.white246.withAlpha(50),
        highlightColor: ColorsApp.white246.withAlpha(10),
        child: Ink(
          height: 59.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorsApp.orange241,
            borderRadius: BorderRadius.circular(51.0),
          ),
          child: Center(
            child: Text(
              'Продовжити',
              style: robotoTextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
                color: ColorsApp.white246,
                letterSpacing: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
