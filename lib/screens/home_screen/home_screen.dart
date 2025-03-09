import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/main_screen/main_screen.dart';
import 'package:memory_box/widgets/custom_background/custom_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onSelectedTab(int index) {
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
    print(_selectedIndex);
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
      case 2:
        return Center(
          child: Text('Запись'),
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
              )),
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
              onTap: _onSelectedTab,
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
                              : ColorsApp.black58,
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
                              : ColorsApp.black58,
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
                              : ColorsApp.black58,
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
                              : ColorsApp.black58,
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
                              : ColorsApp.black58,
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
                              : ColorsApp.black58,
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
                              : ColorsApp.black58,
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
                              : ColorsApp.black58,
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
