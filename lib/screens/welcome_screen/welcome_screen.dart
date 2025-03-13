import 'package:flutter/material.dart';
import 'package:memory_box/widgets/containers/container_info.dart';
import 'package:memory_box/widgets/custom_background/custom_background.dart';

class WelcomeScreen extends StatefulWidget {
  static String routeName = '/welcom_screen';

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      name: 'Ти супер!',
      child: Center(
        child: ContainerInfo(
          text: 'Ми раді тебе бачити',
          fontSize: 24.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
