import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/screens/main_screen/widgets/audio_item.dart';

class CustomAudioListView extends StatelessWidget {
  const CustomAudioListView({
    super.key,
  });

  void openAllAction() {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 11.0,
        ),
        child: Container(
          padding: EdgeInsets.only(
            top: 11,
            left: 11.0,
            right: 11.0,
          ),
          decoration: BoxDecoration(
            color: ColorsApp.white246,
            boxShadow: [
              BoxShadow(
                color: ColorsApp.black.withAlpha(
                  50,
                ),
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
          child: Column(
            spacing: 8.0,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Аудіозаписи',
                    style: customTextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      color: ColorsApp.black58,
                      letterSpacing: 1,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(25.0),
                    onTap: openAllAction,
                    child: Text(
                      ' Відкрити усі ',
                      style: customTextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: ColorsApp.black58,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemCount: 100,
                  separatorBuilder: (
                    context,
                    index,
                  ) =>
                      SizedBox(
                    height: 5.0,
                  ),
                  itemBuilder: (
                    BuildContext context,
                    int index,
                  ) {
                    return AudioItem(name: 'Name', time: 'time',);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

