import 'package:flutter/material.dart';
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
      // color: ColorsApp.white246,
      // theme: ThemeData(
      //   scaffoldBackgroundColor: ColorsApp.white246,
      // ),
      title: "Memory Box",
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        // HomeScreen.routeName: (context) => CustomBackground(
        //       child: HomeScreen(),
        //     ),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
