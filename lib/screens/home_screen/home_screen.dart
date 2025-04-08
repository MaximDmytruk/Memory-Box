import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/screens/audios_screen/audios_screen.dart';
import 'package:memory_box/screens/collection_screen/collection_screen.dart';
import 'package:memory_box/screens/main_screen/main_screen.dart';
import 'package:memory_box/screens/profile_screen/profile_screen.dart';
import 'package:memory_box/screens/record_screen/background.dart';
import 'package:memory_box/screens/subscription_screen/subscription_screen.dart';

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
  bool isRecordScreenVisible = false;
  PersistentBottomSheetController? _bottomSheetController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _bottomSheetController?.close();
    super.dispose();
  }

  void toggleBottomSheet(BuildContext context) {
    if (isRecordScreenVisible) {
      _bottomSheetController?.close();
      isRecordScreenVisible = false;
      setState(
        () {},
      );
    } else {
      _bottomSheetController = showBottomSheet(
        context: context,
        backgroundColor: ColorsApp.transparent,
        enableDrag: false,
        builder: (BuildContext context) {
          return RecordBackground();
        },
      );
      isRecordScreenVisible = true;
      setState(
        () {},
      );
      _bottomSheetController?.closed.then((_) {
        isRecordScreenVisible = false;
        setState(
          () {},
        );
      });
    }
  }

  void onSelectedTab(int index, BuildContext context) {
    if (index == 2) {
      toggleBottomSheet(context);

      return;
    }
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  void subscriptionAction() {
    Navigator.of(context).pushNamed(SubscriptionScreen.routeName);
  }

  Widget? _getScreen(int index) {
    switch (index) {
      case 0:
        return MainScreen();
      case 1:
        return CollectionScreen();

      case 3:
        return AudiosScreen();
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
            drawer: CustomDrawer(
              subscriptionAction: subscriptionAction,
            ),
            backgroundColor: ColorsApp.transparent,
            body: Center(
              child: _getScreen(
                _selectedIndex,
              ),
            ),
            bottomNavigationBar: CustomBottomNavigationBar(
              selectedIndex: _selectedIndex,
              onSelectedTab: onSelectedTab,
              isRecordScreenVisible: isRecordScreenVisible,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: navBarHeight + 25,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                curve: Curves.linear,
                duration: Duration(
                  milliseconds: 200,
                ),
                height: isRecordScreenVisible ? 50 : 0,
                width: 4,
                color: ColorsApp.orange241,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
