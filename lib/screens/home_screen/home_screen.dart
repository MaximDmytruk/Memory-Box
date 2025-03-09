import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/widgets/custom_background/custom_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      name: 'Регистрация',
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Text(
            'Hello world',
            style: TextStyle(
              color: ColorsApp.black,
            ),
          ),
        ),
      ),
    );
  }
}
