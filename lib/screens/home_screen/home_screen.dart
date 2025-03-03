import 'package:flutter/material.dart';
import 'package:memory_box/painter/custom_painter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height * 0.4,
            width: size.width,
            child: CustomPaint(
              size: Size.infinite,
              painter: CirclePainter(),
            ),
          ),
          Center(
            child: Text('Hello World!'),
          ),
        ],
      ),
    );
  }
}
