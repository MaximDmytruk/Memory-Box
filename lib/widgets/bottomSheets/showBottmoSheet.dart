import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box/blocs/record_bloc/record_bloc.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';

void showRecordBottomSheet(BuildContext context) {
  void playIconAction() {
    context.read<RecordBloc>().add(
          RecordEvent.startRecording(),
        );
  }

  void pauseIconAction() {
    context.read<RecordBloc>().add(
          RecordEvent.stopRecording(),
        );
  }

  showBottomSheet(
    context: context,
    backgroundColor: ColorsApp.transparent,
    builder: (BuildContext context) {
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
                    onPressed: () => Navigator.pop(context),
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
