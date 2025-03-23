import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box/blocs/record_bloc/record_bloc.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/registration_screens/registration_screen/widgets/custom_text_button.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({
    super.key,
  });

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  void pauseIconAction() {
    context.read<RecordBloc>().add(
          RecordEvent.stopRecording(),
        );
  }

  void playIconAction() {}

  @override
  void initState() {
    // context.read<RecordBloc>().add(
    //       RecordEvent.startRecording(),
    //     );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: size.height * 0.6,
        padding: EdgeInsets.only(
          left: 25,
          right: 25.0,
        ),
        decoration: BoxDecoration(
          color: ColorsApp.white246,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              25.0,
            ),
            topRight: Radius.circular(
              25.0,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorsApp.black.withAlpha(50),
              blurRadius: 50,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 24,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CustomTextButton(
                name: 'Відмінити',
                fontSize: 16.0,
              ),
            ),
            Text(
              'Запис',
              style: customTextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: ColorsApp.black58,
                  letterSpacing: 2),
            ),
            Divider(color: ColorsApp.black),
            Text('time'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: pauseIconAction,
                    child: Container(
                      height: 80.0,
                      width: 80.0,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                          color: ColorsApp.orange241),
                      child: SvgPicture.asset(
                        IconsApp.pause,
                        colorFilter: const ColorFilter.mode(
                          ColorsApp.white246,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  // InkWell(
                  //   onTap: playIconAction,
                  //   child: Material(
                  //     child: SvgPicture.asset(
                  //       IconsApp.playOrange,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
