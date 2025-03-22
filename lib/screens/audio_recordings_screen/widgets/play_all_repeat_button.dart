import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';

class PlayAllRepeatButton extends StatefulWidget {
  const PlayAllRepeatButton({
    super.key,
  });

  @override
  State<PlayAllRepeatButton> createState() => _PlayAllRepeatButtonState();
}

class _PlayAllRepeatButtonState extends State<PlayAllRepeatButton> {
  bool repeat = false;

  void _repeatAction() {
    if (repeat) {
      repeat = false;
      setState(() {});
    } else {
      repeat = true;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 222.0,
      height: 46.0,
      decoration: BoxDecoration(
        color: repeat == false
            ? ColorsApp.white246withOpaciti05
            : ColorsApp.white246withOpaciti02,
        borderRadius: BorderRadius.circular(
          50.0,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 75,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 3.83,
              ),
              height: double.infinity,
              decoration: BoxDecoration(
                color: ColorsApp.white246,
                borderRadius: BorderRadius.circular(
                  50.0,
                ),
              ),
              child: Row(
                spacing: 8,
                children: [
                  SvgPicture.asset(
                    IconsApp.playPurple,
                  ),
                  Text(
                    'Запустити',
                    style: customTextStyle(
                      color: ColorsApp.purple140,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 25,
            child: InkWell(
              onTap: _repeatAction,
              child: SvgPicture.asset(
                IconsApp.repeat,
                colorFilter: ColorFilter.mode(
                  repeat == false
                      ? ColorsApp.white246withOpaciti05
                      : ColorsApp.white246,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
