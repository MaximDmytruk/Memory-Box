import 'package:flutter/material.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

void showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: ColorsApp.transparent,
    barrierColor: ColorsApp.transparent,
    builder: (BuildContext bottomSheetContext) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 32.0),
        decoration: BoxDecoration(
          color: ColorsApp.white246,
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          boxShadow: [
            BoxShadow(
              color: ColorsApp.black.withAlpha(50),
              blurRadius: 50,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(bottomSheetContext),
                    child: Text(
                      'Отменить',
                      style: customTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorsApp.black58,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Запись',
              style: customTextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: ColorsApp.black58,
              ),
            ),
            SizedBox(height: 15.0),
            Divider(color: ColorsApp.black),
            SizedBox(height: 15.0),
            Text('time'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.pause),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
