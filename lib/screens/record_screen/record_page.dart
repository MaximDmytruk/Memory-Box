import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:memory_box/blocs/recording_screen_bloc/recording_screen_bloc.dart';
import 'package:memory_box/blocs/record_bloc/record_bloc.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/registration_screens/registration_screen/widgets/custom_text_button.dart';
import 'package:memory_box/widgets/audio_wave/audio_wave.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({
    super.key,
  });

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  Color _recordColor = Colors.transparent;
  Duration durationForChangeColor = Duration(seconds: 1);

  @override
  void initState() {
    context.read<RecordBloc>().add(
          RecordEvent.startRecording(),
        );
    _toggleColor();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _toggleColor() {
    Timer.periodic(durationForChangeColor, (timer) {
      if (mounted) {
        setState(() {
          _recordColor = _recordColor == Colors.transparent
              ? Colors.red
              : Colors.transparent;
        });
      }
    });
  }

  void pauseIconAction({required String audioPath}) {
    context.read<RecordBloc>().add(
          RecordEvent.stopRecording(),
        );
    context.read<RecordingScreenBloc>().add(
          RecordingScreenEvent.toPlay(
            audioPath: audioPath,
          ),
        );
  }

  String formatDuration(int seconds) {
    final duration = Duration(seconds: seconds);
    return DateFormat('HH:mm:ss').format(
      DateTime(0, 0, 0).add(
        duration,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecordBloc, RecordState>(
      builder: (context, state) {
        return Column(
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
            SizedBox(
              width: double.infinity,
              child: AudioWave(
                amplitudeHistory: state.amplitudeHistory,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                AnimatedContainer(
                  duration: durationForChangeColor,
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _recordColor,
                  ),
                ),
                Text(
                  formatDuration(
                    state.recordingDuration,
                  ),
                  style: customTextStyle(
                    fontSize: 18.0,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (state.audioPath == null) {
                        return;
                      } else {
                        String path = state.audioPath!;
                        pauseIconAction(audioPath: path);
                      }
                    },
                    child: Container(
                      height: 80.0,
                      width: 80.0,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                        color: ColorsApp.orange241,
                      ),
                      child: SvgPicture.asset(
                        IconsApp.pause,
                        colorFilter: const ColorFilter.mode(
                          ColorsApp.white246,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
