import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:memory_box/blocs/recording_screen_bloc/recording_screen_bloc.dart';
import 'package:memory_box/blocs/player_bloc/player_bloc.dart';
import 'package:memory_box/blocs/record_bloc/record_bloc.dart';
import 'package:memory_box/repositories/audio_repository.dart';
import 'package:memory_box/screens/home_screen/home_screen.dart';
import 'package:memory_box/screens/registration_screens/new_user_meeting_screen/new_user_meeting_screen.dart';
import 'package:memory_box/screens/registration_screens/registration_confirmation_screen/registration_confirmation_screen.dart';
import 'package:memory_box/screens/registration_screens/registration_screen/registration_screen.dart';
import 'package:memory_box/screens/splash_screen/screen/splash_screen.dart';
import 'package:memory_box/screens/registration_screens/welcome_screen/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final AudioRepository audioRepository = AudioRepository();

  MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RecordBloc(audioRepository: audioRepository),
        ),
        BlocProvider(
          create: (context) => PlayerBloc(),
        ),
        BlocProvider(
          create: (context) => RecordingScreenBloc(),
        ),
      ],
      child: MaterialApp(
        title: "Memory Box",
        routes: {
          SplashScreen.routeName: (context) => SplashScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
          NewUserMeetingScreen.routeName: (context) => NewUserMeetingScreen(),
          RegistrationScreen.routeName: (context) => RegistrationScreen(),
          RegistrationConfirmationScreen.routeName: (context) =>
              RegistrationConfirmationScreen(),
          WelcomeScreen.routeName: (context) => WelcomeScreen(),
        },
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
