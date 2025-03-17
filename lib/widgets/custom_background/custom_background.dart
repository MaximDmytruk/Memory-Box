import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';

import 'package:memory_box/constants/painter/circle_painter.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;
  final String? name;
  final String? secondName;
  final double heightPaint;

  const CustomBackground({
    super.key,
    required this.child,
    this.name,
    this.secondName,
    this.heightPaint = 0.4,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorsApp.white246,
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height * heightPaint,
            child: CustomPaint(
              painter: CirclePainter(
                name: name,
                secondName: secondName,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
