import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/home_screen/home_screen.dart';
import 'package:memory_box/widgets/bottomSheets/record_custom_bottom_sheet.dart';
import 'package:memory_box/widgets/custom_background/custom_background.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void iconButtonAction() {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomBackground(
      child: Scaffold(
        backgroundColor: ColorsApp.transparent,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 33.0,
          ),
          child: Column(
            spacing: 24.0,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: iconButtonAction,
                      icon: SvgPicture.asset(
                        IconsApp.menu,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Підбірки',
                      style: robotoTextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                        color: ColorsApp.white246,
                        letterSpacing: 4,
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(25.0),
                      onTap: () {},
                      child: Text(
                        ' Відкрити усі ',
                        style: robotoTextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: ColorsApp.white246,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: size.height * 0.267,
                  child: Row(
                    spacing: 16.0,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Container(color: Colors.greenAccent)),
                      Expanded(
                        child: Column(
                          spacing: 16.0,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(child: Container(color: Colors.blue)),
                            Expanded(child: Container(color: Colors.amber)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 11.0,vertical: 10,),
                    decoration: BoxDecoration(
                      color: ColorsApp.white246,
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
                    child: ListView.builder(
                        itemCount: 100,
                        itemBuilder: (
                          BuildContext context,
                          int index,
                        ) {
                          if (index == 0) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Аудіозаписи',
                                  style: robotoTextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                    color: ColorsApp.black58,
                                    letterSpacing: 4,
                                  ),
                                ),
                                InkWell(
                                  borderRadius: BorderRadius.circular(25.0),
                                  onTap: () {},
                                  child: Text(
                                    ' Відкрити усі ',
                                    style: robotoTextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: ColorsApp.black58,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          } else {
                            return Row(
                              children: [Text('sadasd')],
                            );
                          }
                        }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
