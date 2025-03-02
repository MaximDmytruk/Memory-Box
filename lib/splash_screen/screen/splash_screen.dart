import 'package:flutter/material.dart';
import 'package:memory_box/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Future.delayed(Duration(seconds: 2), () {
    //   if (mounted) {
    //     Navigator.of(context).pushReplacementNamed(
    //       HomeScreen.routeName,
    //     );
    //   }
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(128, 119, 228, 1),
              Color.fromRGBO(195, 132, 200, 1),
              Color.fromRGBO(225, 144, 175, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 0.6, 0.9],
          ),
        ),
        child: Center(
          child: Text('MemoryBox'),
        ),
      ),
    );
  }
}
