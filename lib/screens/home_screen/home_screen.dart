import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/main_screen/main_screen.dart';
import 'package:memory_box/widgets/bottomSheets/show_record_bottom_sheet.dart';
import 'package:memory_box/widgets/custom_background/custom_background.dart';
import 'package:memory_box/widgets/custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  //Audio recorder
  final FlutterSoundRecorder _recorder = FlutterSoundRecorder();
  bool _isRecording = false;

  @override
  void initState() {
    _initRecorder();
    super.initState();
  }

  //For AudioRecord
  Future<void> _initRecorder() async {
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw 'Microphone permission not granted';
    }
    await _recorder.openRecorder();
    _recorder.setSubscriptionDuration(const Duration(milliseconds: 500));
  }

  Future<void> _startRecording() async {
    String randomeName = Random().nextInt(6).toString();

    // final dir = await getExternalStorageDirectory();
    final downloadPath = '/storage/emulated/0/Download';
    final path = '$downloadPath/test_record$randomeName.aac';

    await _recorder.startRecorder(toFile: path);
    setState(() {
      _isRecording = true;
    });
  }

  Future<void> _stopRecording() async {
    await _recorder.stopRecorder();
    setState(() {
      _isRecording = false;
    });
  }

  void playIconAction() {
    print('Tapped play');
    _startRecording();
  }

  void pauseIconAction() {
    print('tapped pause');
    _stopRecording();
  }

  @override
  void dispose() {
    _recorder.closeRecorder();
    super.dispose();
  }

  //My Widgets
  bool _isPanelVisible = false;

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
    return CustomBackground(
      name: 'Memory box',
      child: Scaffold(
        backgroundColor: ColorsApp.transparent,
        body: Stack(
          children: [
            Center(
              child: _getScreen(
                _selectedIndex,
              ),
            ),
            if (_isPanelVisible)
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 150,
                  height: 60,
                  color: Colors.red,
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
