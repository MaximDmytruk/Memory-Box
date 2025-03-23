import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/screens/audio_recordings_screen/audio_recordings_screen.dart';
import 'package:memory_box/screens/collection_screen/collection_screen.dart';
import 'package:memory_box/screens/main_screen/main_screen.dart';
import 'package:memory_box/screens/profile_screen/profile_screen.dart';
import 'package:memory_box/screens/record_audio_screen/record_audio_screen.dart';

import 'package:memory_box/widgets/backgrounds/custom_background/custom_background.dart';
import 'package:memory_box/widgets/navigations_bars/custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:memory_box/widgets/drawers/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool _isPanelVisible = false;

  @override
  void initState() {
    super.initState();
  }

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

      showRecordScreen(context);

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
        return CollectionScreen();

      case 3:
        return AudioRecordingsScreen();
      case 4:
        return ProfileScreen();
      default:
        return Center(
          child: Text('Default'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    double navBarHeight = kBottomNavigationBarHeight;
    Size size = MediaQuery.of(context).size;
    return CustomBackground(
      name: 'Memory box',
      child: Stack(
        children: [
          Scaffold(
            drawer: CustomDrawer(),
            backgroundColor: ColorsApp.transparent,
            body: Center(
              child: _getScreen(
                _selectedIndex,
              ),
            ),
            bottomNavigationBar: CustomBottomNavigationBar(
              selectedIndex: _selectedIndex,
              onSelectedTab: onSelectedTab,
            ),
          ),
          if (_isPanelVisible)
            Padding(
              padding: EdgeInsets.only(bottom: navBarHeight+25),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  width: 5,
                  color: ColorsApp.orange241,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
