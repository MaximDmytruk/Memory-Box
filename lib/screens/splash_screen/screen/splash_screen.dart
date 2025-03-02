import 'package:flutter/material.dart';
import 'package:memory_box/screens/splash_screen/widgets/splash_eight.dart';
import 'package:memory_box/screens/splash_screen/widgets/splash_five.dart';
import 'package:memory_box/screens/splash_screen/widgets/splash_four.dart';
import 'package:memory_box/screens/splash_screen/widgets/splash_nine.dart';
import 'package:memory_box/screens/splash_screen/widgets/splash_seven.dart';
import 'package:memory_box/screens/splash_screen/widgets/splash_six.dart';
import 'package:memory_box/screens/splash_screen/widgets/splash_three.dart';
import 'package:memory_box/screens/splash_screen/widgets/splash_two.dart';

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
      body: SplashNine(),
    );
  }
}
