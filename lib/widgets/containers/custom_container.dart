import 'package:flutter/widgets.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  const CustomContainer({
    super.key,
    this.child,
     this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 21.0,
          ),
      decoration: BoxDecoration(
        color: ColorsApp.white246,
        boxShadow: [
          BoxShadow(
            color: ColorsApp.black.withAlpha(30),
            blurRadius: 7.0,
            spreadRadius: 0.0,
            offset: Offset(0, 4.0),
          ),
        ],
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      child: child,
    );
  }
}
