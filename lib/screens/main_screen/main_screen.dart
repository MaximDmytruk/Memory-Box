import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/main_screen/widgets/custom_audio_list_view.dart';
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
            top: 40.0,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Підбірки',
                      style: customTextStyle(
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
                        style: customTextStyle(
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
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          decoration: BoxDecoration(
                            color: ColorsApp.greenWithOpaciti075,
                            borderRadius: BorderRadius.circular(
                              30.0,
                            ),
                          ),
                          child: Column(
                            spacing: 47.0,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Тут буде твій набір казок',
                                style: customTextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: ColorsApp.white246,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(25.0),
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 1,
                                        color: ColorsApp.white,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Добавити',
                                    style: customTextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: ColorsApp.white246,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
              SizedBox(height: 15.0),
              CustomAudioListView(),
            ],
          ),
        ),
      ),
    );
  }
}
