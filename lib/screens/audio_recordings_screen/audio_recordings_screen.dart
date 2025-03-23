import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/audio_recordings_screen/widgets/play_all_repeat_button.dart';
import 'package:memory_box/widgets/audio_items/audio_item.dart';
import 'package:memory_box/widgets/app_bars/custom_app_bar.dart';
import 'package:memory_box/widgets/backgrounds/custom_background/custom_background.dart';

class AudioRecordingsScreen extends StatefulWidget {
  const AudioRecordingsScreen({super.key});

  @override
  State<AudioRecordingsScreen> createState() => _AudioRecordingsScreenState();
}

class _AudioRecordingsScreenState extends State<AudioRecordingsScreen> {
  double heightPaint = 0.33;

  void _iconMenuButtonAction() {
    Scaffold.of(context).openDrawer();
  }

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return CustomBackground(
      heightPaint: heightPaint,
      backgroundColor: ColorsApp.blue94,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 67.0,
          left: 16.0,
          right: 16.0,
        ),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Аудіозаписи',
              onDrawerIconTap: _iconMenuButtonAction,
              leadingChild: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  IconsApp.dots,
                ),
              ),
            ),

            Text(
              'Все в одному місці',
              style: customTextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: ColorsApp.white246,
                  letterSpacing: 1.5),
            ),
            // SizedBox(height: 30,),
            SizedBox(
              height: size.height * heightPaint * 0.13,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '20 Аудіо',
                        style: customTextStyle(
                          color: ColorsApp.white246,
                        ),
                      ),
                      Text(
                        '10:30 годин',
                        style: customTextStyle(
                          color: ColorsApp.white246,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  PlayAllRepeatButton(),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, index) {
                  return AudioItem(
                    name: 'Name',
                    time: 'time',
                  );
                },
                separatorBuilder: (BuildContext context, index) {
                  return SizedBox(
                    height: 8,
                  );
                },
                itemCount: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
