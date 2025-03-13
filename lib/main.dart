import 'package:flutter/material.dart';
import 'package:memory_box/screens/home_screen/home_screen.dart';
import 'package:memory_box/screens/new_user_meeting_screen/new_user_meeting_screen.dart';
import 'package:memory_box/screens/registration_screen/registration_screen.dart';
import 'package:memory_box/screens/splash_screen/screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Memory Box",
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        NewUserMeetingScreen.routeName: (context) => NewUserMeetingScreen(),
        RegistrationScreen.routeName: (context) => RegistrationScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
