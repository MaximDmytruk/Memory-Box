import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
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
    Size size = MediaQuery.of(context).size;
    return CustomBackground(
      name: 'Ти супер!',
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 51,
          children: [
            SizedBox(
              height: size.height * 0.4,
            ),
            ContainerInfo(
              text: 'Ми раді тебе бачити',
              fontSize: 24.0,
              fontWeight: FontWeight.w400,
            ),
            SvgPicture.asset(
              IconsApp.heart,
            ),
          ],
        ),
      ),
    );
  }
}
