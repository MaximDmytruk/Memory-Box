import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/screens/home_screen/home_screen.dart';
import 'package:memory_box/widgets/bottomSheets/record_custom_bottom_sheet.dart';
import 'package:memory_box/widgets/custom_background/custom_background.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Scaffold(
        backgroundColor: ColorsApp.transparent,
        body: Center(
          child: Text('Main'),
        ),
      ),
    );
  }
}
