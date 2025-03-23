import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';

class AudioItem extends StatelessWidget {
  final String name;
  final String time;
  final GestureTapCallback? onPlayTap;

  const AudioItem({
    super.key,
    required this.name,
    required this.time,
    this.onPlayTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        5.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorsApp.black58WithOpaciti02,
        ),
        borderRadius: BorderRadius.circular(
          35.0,
        ),
      ),
      child: Row(
        spacing: 18.0,
        children: [
          InkWell(
              onTap: onPlayTap, child: SvgPicture.asset(IconsApp.playPurple)),
          Column(
            spacing: 3,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: customTextStyle(),
              ),
              Text(
                time,
                style: customTextStyle(
                  color: ColorsApp.black58WithOpaciti05,
                ),
              ),
            ],
          ),
          Spacer(),
          //Button
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
            ),
          )
        ],
      ),
    );
  }
}
