import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/widgets/app_bars/custom_app_bar.dart';
import 'package:memory_box/widgets/backgrounds/custom_background/custom_background.dart';
import 'package:memory_box/widgets/containers/container_info.dart';
import 'package:memory_box/widgets/containers/custom_container.dart';

class SubscriptionScreen extends StatefulWidget {
  static final String routeName = '/subscription_screen';

  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  void _iconMenuButtonAction() {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 67.0,
          bottom: 47.0,
          left: 5.0,
          right: 5.0,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 11.0,
              ),
              child: CustomAppBar(
                onDrawerIconTap: _iconMenuButtonAction,
                title: "Підписка",
              ),
            ),
            Text(
              'Розшир можливості',
              style: customTextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: ColorsApp.white246,
                  letterSpacing: 1.5),
            ),
            SizedBox(
              height: 46.0,
            ),
            Expanded(
              child: CustomContainer(
                child: Column(
                  spacing: 34,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Вибери підписку',
                      style: customTextStyle(
                        fontSize: 24.0,
                        letterSpacing: 3,
                      ),
                    ),
                    Row(
                      spacing: 16,
                      children: [
                        Expanded(
                          child: CustomContainer(
                            padding: EdgeInsets.only(
                              top: 75.0,
                              left: 25.0,
                              right: 25.0,
                              bottom: 21.0,
                            ),
                            child: Column(
                              spacing: 10.0,
                              children: [
                                Text(
                                  '300грн',
                                  style: customTextStyle(
                                    fontSize: 24.0,
                                    letterSpacing: 1,
                                  ),
                                ),
                                Text(
                                  'в місяць',
                                  style: customTextStyle(
                                    fontSize: 16.0,
                                    letterSpacing: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 24.0,
                                ),
                                SvgPicture.asset(
                                  IconsApp.selectedCircle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: CustomContainer(
                            padding: EdgeInsets.only(
                              top: 75.0,
                              left: 25.0,
                              right: 25.0,
                              bottom: 21.0,
                            ),
                            child: Column(
                              spacing: 10,
                              children: [
                                Text(
                                  '1800грн',
                                  style: customTextStyle(
                                    fontSize: 24.0,
                                    letterSpacing: 1,
                                  ),
                                ),
                                Text(
                                  'в рік',
                                  style: customTextStyle(
                                    fontSize: 16.0,
                                    letterSpacing: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 24.0,
                                ),
                                SvgPicture.asset(
                                  IconsApp.unselectedCircle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
