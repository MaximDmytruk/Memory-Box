

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/main_screen/main_screen.dart';
import 'package:memory_box/widgets/custom_background/custom_background.dart';
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


  final dir = await getExternalStorageDirectory();
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
  void _onSelectedTab(int index, BuildContext context) {
    if (index == 2) {
      _showBottomSheet(context);
      return;
    }
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context, 
      backgroundColor: ColorsApp.transparent,
      barrierColor: ColorsApp.transparent,
      builder: (BuildContext bottomSheetContext) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 32.0),
          decoration: BoxDecoration(
            color: ColorsApp.white246,
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            boxShadow: [
              BoxShadow(
                color: ColorsApp.black.withAlpha(50),
                blurRadius: 50,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(bottomSheetContext),
                      child: Text(
                        'Отменить',
                        style: robotoTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: ColorsApp.black58,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Запись',
                style: robotoTextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: ColorsApp.black58,
                ),
              ),
              SizedBox(height: 15.0),
              Divider(color: ColorsApp.black),
              SizedBox(height: 15.0),
              Text('time'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: playIconAction,
                    icon: Icon(Icons.play_arrow),
                  ),
                  IconButton(
                    onPressed: pauseIconAction,
                    icon: Icon(Icons.pause),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }


  Widget _getScreen(int index) {
    switch (index) {
      case 0:
        return Center(
          child: MainScreen(),
        );
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
          child: Text('ww'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      name: 'Memory box',
      
      child: Scaffold(
        backgroundColor: ColorsApp.transparent,
        body: Center(
          child: _getScreen(
            _selectedIndex,
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: ColorsApp.transparent,
            boxShadow: [
              BoxShadow(
                color: ColorsApp.black.withAlpha(50),
                blurRadius: 50,
                spreadRadius: 10,
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                20.0,
              ),
              topRight: Radius.circular(
                20.0,
              ),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                20.0,
              ),
              topRight: Radius.circular(
                20.0,
              ),
            ),
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (index){ _onSelectedTab(index, context);},
              backgroundColor: ColorsApp.white246,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              items: [
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SvgPicture.asset(
                        IconsApp.home,
                        colorFilter: ColorFilter.mode(
                          _selectedIndex == 0
                              ? ColorsApp.purple140
                              : ColorsApp.black58WithOpaciti08,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(
                        'Главная',
                        style: robotoTextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                          color: _selectedIndex == 0
                              ? ColorsApp.purple140
                              : ColorsApp.black58WithOpaciti08,
                        ),
                      ),
                    ],
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SvgPicture.asset(
                        IconsApp.category,
                        colorFilter: ColorFilter.mode(
                          _selectedIndex == 1
                              ? ColorsApp.purple140
                              : ColorsApp.black58WithOpaciti08,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(
                        'Подборки',
                        style: robotoTextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                          color: _selectedIndex == 1
                              ? ColorsApp.purple140
                              : ColorsApp.black58WithOpaciti08,
                        ),
                      ),
                    ],
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SvgPicture.asset(
                        IconsApp.microfoneOrangeBackground,
                        width: 46.0,
                        height: 46.0,
                      ),
                      Text(
                        'Запись',
                        style: robotoTextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                          color: ColorsApp.orange241,
                        ),
                      ),
                    ],
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SvgPicture.asset(
                        IconsApp.paper,
                        colorFilter: ColorFilter.mode(
                          _selectedIndex == 3
                              ? ColorsApp.purple140
                              : ColorsApp.black58WithOpaciti08,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(
                        'Аудиозаписи',
                        style: robotoTextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                          color: _selectedIndex == 3
                              ? ColorsApp.purple140
                              : ColorsApp.black58WithOpaciti08,
                        ),
                      ),
                    ],
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SvgPicture.asset(
                        IconsApp.profile,
                        colorFilter: ColorFilter.mode(
                          _selectedIndex == 4
                              ? ColorsApp.purple140
                              : ColorsApp.black58WithOpaciti08,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(
                        'Профиль',
                        style: robotoTextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                          color: _selectedIndex == 4
                              ? ColorsApp.purple140
                              : ColorsApp.black58WithOpaciti08,
                        ),
                      ),
                    ],
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
