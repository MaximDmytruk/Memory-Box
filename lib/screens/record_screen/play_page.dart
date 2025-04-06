import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:memory_box/blocs/recording_screen_bloc/recording_screen_bloc.dart';
import 'package:memory_box/blocs/player_bloc/player_bloc.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/constants/fonts/inter_font.dart';
import 'package:memory_box/constants/icons_app/icons_app.dart';
import 'package:memory_box/screens/registration_screens/registration_screen/widgets/custom_text_button.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  late String audioPath;

  @override
  void initState() {
    super.initState();
    audioPath = context.read<RecordingScreenBloc>().state.audioPath;
    if (audioPath.isNotEmpty) {
      context.read<PlayerBloc>().add(
            PlayerEvent.getAudioDuration(
              audioPath: audioPath,
            ),
          );
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  void playIconAction({
    required String audioPath,
  }) {
    context.read<PlayerBloc>().add(
          PlayerEvent.playAudio(
            audioPath: audioPath,
          ),
        );
  }

  void pauseIconAction() {
    context.read<PlayerBloc>().add(PlayerEvent.stopPlaying());
  }

  void deleteAction() {}
  void downloadAction() {}
  void uploadAction() {}

  String formatDuration(int seconds) {
    final duration = Duration(seconds: seconds);
    return DateFormat('mm:ss').format(
      DateTime(0, 0).add(
        duration,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecordingScreenBloc, RecordingScreenState>(
      builder: (context, recordState) {
        return BlocBuilder<PlayerBloc, PlayerState>(
          builder: (context, playerState) {
            final double duration = playerState.audioDuration ?? 0;
            final double position = playerState.audioPosition ?? 0;

            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              spacing: 34,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: downloadAction,
                      icon: SvgPicture.asset(
                        IconsApp.download,
                      ),
                    ),
                    IconButton(
                      onPressed: uploadAction,
                      icon: SvgPicture.asset(
                        IconsApp.upload,
                      ),
                    ),
                    IconButton(
                      onPressed: deleteAction,
                      icon: SvgPicture.asset(
                        IconsApp.delete,
                      ),
                    ),
                    Spacer(),
                    CustomTextButton(
                      name: 'Зберегти',
                      fontSize: 16.0,
                    ),
                  ],
                ),
                Text(
                  'Аудіозапис',
                  style: customTextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: ColorsApp.black58,
                    letterSpacing: 2,
                  ),
                ),
                Column(
                  children: [
                    Slider(
                      padding: EdgeInsets.zero,
                      min: 0,
                      max: duration,
                      value: position > duration ? duration : position,
                      onChanged: (
                        value,
                      ) {
                        context.read<PlayerBloc>().add(
                              PlayerEvent.seekToPosition(
                                value,
                              ),
                            );
                      },
                      activeColor: ColorsApp.black58,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          formatDuration(
                            playerState.audioPosition?.toInt() ?? 0,
                          ),
                          style: customTextStyle(
                            fontSize: 18.0,
                            letterSpacing: 0,
                          ),
                        ),
                        Text(
                          formatDuration(
                            playerState.audioDuration?.toInt() ?? 0,
                          ),
                          style: customTextStyle(
                            fontSize: 18.0,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
             
                Align(
                  alignment: Alignment.bottomCenter,
                  child: playerState.playing
                      ? InkWell(
                          onTap: pauseIconAction,
                          child: Container(
                            height: 80.0,
                            width: 80.0,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
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
                        )
                      : InkWell(
                          onTap: () {
                            playIconAction(
                              audioPath: recordState.audioPath,
                            );
                          },
                          child: SvgPicture.asset(
                            IconsApp.playOrange,
                          ),
                        ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
