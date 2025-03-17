import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/screens/main_screen/main_screen.dart';
import 'package:memory_box/widgets/bottomSheets/record_custom_bottom_sheet.dart';
import 'package:memory_box/widgets/custom_background/custom_background.dart';
import 'package:memory_box/widgets/custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:memory_box/widgets/drawers/custom_drawer.dart';

import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool _isPanelVisible = false;

  //Audio recorder
  final FlutterSoundRecorder _recorder = FlutterSoundRecorder();
  bool _isRecording = false;

  @override
  void initState() {
    // _initRecorder();
    super.initState();
  }

  // //For AudioRecord
  // Future<void> _initRecorder() async {
  //   final status = await Permission.microphone.request();
  //   if (status != PermissionStatus.granted) {
  //     throw 'Microphone permission not granted';
  //   }
  //   await _recorder.openRecorder();
  //   _recorder.setSubscriptionDuration(const Duration(milliseconds: 500));
  // }

  // Future<void> _startRecording() async {
  //   String randomeName = Random().nextInt(6).toString();

  //   // final dir = await getExternalStorageDirectory();
  //   final downloadPath = '/storage/emulated/0/Download';
  //   final path = '$downloadPath/test_record$randomeName.aac';

  //   await _recorder.startRecorder(toFile: path);
  //   setState(() {
  //     _isRecording = true;
  //   });
  // }

  // Future<void> _stopRecording() async {
  //   await _recorder.stopRecorder();
  //   setState(() {
  //     _isRecording = false;
  //   });
  // }

  // void playIconAction() {
  //   print('Tapped play');
  //   _startRecording();
  // }

  // void pauseIconAction() {
  //   print('tapped pause');
  //   _stopRecording();
  // }

  // @override
  // void dispose() {
  //   _recorder.closeRecorder();
  //   super.dispose();
  // }

  //My Widgets
  

  void turnOnOffVisibility() {
    if (_isPanelVisible == true) {
      setState(() {
        _isPanelVisible = false;
      });
    } else {
      setState(() {
        _isPanelVisible = true;
      });
    }
  }

  void onSelectedTab(int index, BuildContext context) {
    if (index == 2) {
      turnOnOffVisibility();

      // showRecordBottomSheet(
      //   context: context,
      //   playIconAction: playIconAction,
      //   pauseIconAction: pauseIconAction,
      // );
      return;
    }
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget? _getScreen(int index) {
    switch (index) {
      case 0:
        return MainScreen();
      case 1:
        return Center(
          child: Text('Подборки'),
        );

      case 3:
        return Center(
          child: Text('Аудиозаписи'),
        );
      case 4:
        return Center(
          child: Text('Профиль'),
        );
      default:
        return Center(
          child: Text('Default'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomBackground(
      name: 'Memory box',
      child: Scaffold(
        drawer: CustomDrawer(),
        backgroundColor: ColorsApp.transparent,
        body: Stack(
          children: [
            Center(
              child: _getScreen(
                _selectedIndex,
              ),
            ),
            if (_isPanelVisible)
              Padding(
                padding: EdgeInsets.only(
                  top: size.width * 0.5,
                ),
                child: RecordCustomBottomSheet(
                    // playIconAction: playIconAction,
                    // pauseIconAction: pauseIconAction,
                    ),
              ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onSelectedTab: onSelectedTab,
        ),
      ),
    );
  }
}
