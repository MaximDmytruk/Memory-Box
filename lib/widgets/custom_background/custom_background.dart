import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';

import 'package:memory_box/constants/painter/circle_painter.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;
  final String? name;
  final String? secondName;

  const CustomBackground({
    super.key,
    required this.child,
    this.name,
    this.secondName,
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
            height: size.height * 0.4,
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
