import 'dart:math';

import 'package:flutter/material.dart';
import 'package:memory_box/screens/auth_screen/auth_screen.dart';
import 'package:memory_box/screens/registration_screens/new_user_meeting_screen/new_user_meeting_screen.dart';
import 'package:memory_box/screens/splash_screen/widgets/splash_first.dart';
import 'package:memory_box/screens/splash_screen/widgets/splash_two.dart';
import 'package:memory_box/screens/splash_screen/widgets/splash_three.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Random random = Random();
  final List<Widget> listSplash = [
    SplashThree(),
    SplashTwo(),
    SplashFirst(),
  ];
  int randomIndexForSplash = Random().nextInt(3);

  @override
  void initState() {
    Future.delayed(
        Duration(
          seconds: 2,
        ), () {
      if (mounted) {
        Navigator.of(context).pushReplacementNamed(AuthScreen.routeName,);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listSplash[Random().nextInt(listSplash.length)],
    );
  }
}
