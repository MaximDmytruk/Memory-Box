import 'package:flutter/material.dart';
import 'package:memory_box/painter/custom_painter.dart';
import 'package:memory_box/screens/home_screen/home_screen.dart';
import 'package:memory_box/screens/splash_screen/screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.transparent,
      title: "Memory Box",
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) =>
            _CustomBackground(child: HomeScreen()),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

class _CustomBackground extends StatefulWidget {
  final Widget child;
  const _CustomBackground({
    required this.child,
  });

  @override
  State<_CustomBackground> createState() => _CustomBackgroundState();
}

class _CustomBackgroundState extends State<_CustomBackground> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: size.height * 0.4,
          child: CustomPaint(
            painter: CustomBackgroundPainter(),
          ),
        ),
        widget.child,
      ],
    );
  }
}
