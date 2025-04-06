import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/audios_screen/widgets/play_all_repeat_button.dart';
import 'package:memory_box/widgets/audio_items/audio_item.dart';
import 'package:memory_box/widgets/app_bars/custom_app_bar.dart';
import 'package:memory_box/widgets/backgrounds/custom_background/custom_background.dart';

class AudiosScreen extends StatefulWidget {
  const AudiosScreen({super.key});

  @override
  State<AudiosScreen> createState() => _AudiosScreenState();
}

class _AudiosScreenState extends State<AudiosScreen> {
  double heightPaint = 0.33;

  @override
  void initState() {
    super.initState();
  }

  void _iconMenuButtonAction() {
    Scaffold.of(context).openDrawer();
  }

  void itemPlayTap(String name) {
    if (entry == null) {
      showOverlay(name);
      print('Play tap');
    } else {
      updateOverlay(name);
      print('Play Update tap');
    }
  }

  //OVERLAY:
  String currentName = '';
  OverlayEntry? entry;

  double navBarHeight = kBottomNavigationBarHeight;
  Offset offset = Offset(0, 150);
  void showOverlay(String name) {
    currentName = name;
    Size size = MediaQuery.of(context).size;
    // double navBarHeight = kBottomNavigationBarHeight;

    entry = OverlayEntry(builder: (
      BuildContext context,
    ) {
      return Positioned(
        top: offset.dy,
        child: SizedBox(
          width: size.width,
          child: GestureDetector(
            onPanUpdate: (details) {
              // offset += details.delta;
              // offset = Offset(0, offset.dy);
              offset = Offset(
                0,
                offset.dy + details.delta.dy,
              );
              entry!.markNeedsBuild();
            },
            child: Material(
              color: ColorsApp.transparent,
              child: Container(
                padding: EdgeInsets.all(12.0),
                height: 80.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ColorsApp.black58WithOpaciti008,
                      blurRadius: 11,
                      spreadRadius: 0.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(
                    71.0,
                  ),
                  color: Colors.amber,
                  gradient: LinearGradient(
                    colors: [
                      ColorsApp.purple140,
                      ColorsApp.purple108,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Row(
                  spacing: 24,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: ColorsApp.white246,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        IconsApp.pause,
                        colorFilter: const ColorFilter.mode(
                          ColorsApp.purple140,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    Text(
                      currentName,
                      style: customTextStyle(
                        color: ColorsApp.white246,
                      ),
                    ),
                    IconButton(
                      onPressed: hideOverlay,
                      icon: Icon(
                        Icons.close,
                        color: ColorsApp.white246,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });

    final OverlayState overlay = Overlay.of(context);
    overlay.insert(entry!);
  }

  void updateOverlay(String name) {
    currentName = name;
    entry?.markNeedsBuild();
  }

  void hideOverlay() {
    entry?.remove();
    entry = null;
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
                    name: 'Name $index',
                    time: 'time',
                    onPlayTap: () {
                      itemPlayTap('Name index = $index');
                    },
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
