import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final Function onSelectedTab;
  const CustomBottomNavigationBar({
    super.key,
    required this.onSelectedTab,
    required this.selectedIndex,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: widget.selectedIndex,
          selectedLabelStyle: TextStyle(fontSize: 7),
          onTap: (index) {
            widget.onSelectedTab(index, context);
          },
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
                      widget.selectedIndex == 0
                          ? ColorsApp.purple140
                          : ColorsApp.black58WithOpaciti08,
                      BlendMode.srcIn,
                    ),
                  ),
                  Text(
                    'Главная',
                    style: customTextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: widget.selectedIndex == 0
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
                      widget.selectedIndex == 1
                          ? ColorsApp.purple140
                          : ColorsApp.black58WithOpaciti08,
                      BlendMode.srcIn,
                    ),
                  ),
                  Text(
                    'Подборки',
                    style: customTextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: widget.selectedIndex == 1
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
                    style: customTextStyle(
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
                      widget.selectedIndex == 3
                          ? ColorsApp.purple140
                          : ColorsApp.black58WithOpaciti08,
                      BlendMode.srcIn,
                    ),
                  ),
                  Text(
                    'Аудиозаписи',
                    style: customTextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: widget.selectedIndex == 3
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
                      widget.selectedIndex == 4
                          ? ColorsApp.purple140
                          : ColorsApp.black58WithOpaciti08,
                      BlendMode.srcIn,
                    ),
                  ),
                  Text(
                    'Профиль',
                    style: customTextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: widget.selectedIndex == 4
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
    );
  }
}
