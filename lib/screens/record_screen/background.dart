import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box/blocs/recording_screen_bloc/recording_screen_bloc.dart';
import 'package:memory_box/constants/colors_app/colors_app.dart';
import 'package:memory_box/screens/record_screen/play_page.dart';
import 'package:memory_box/screens/record_screen/record_page.dart';

class RecordBackground extends StatefulWidget {
  const RecordBackground({
    super.key,
  });

  @override
  State<RecordBackground> createState() => _RecordBackgroundState();
}

class _RecordBackgroundState extends State<RecordBackground> {
  Size get size => MediaQuery.of(context).size;

  @override
  void initState() {
    context.read<RecordingScreenBloc>().add(
          RecordingScreenEvent.toRecord(),
        );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
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
        child: BlocBuilder<RecordingScreenBloc, RecordingScreenState>(
          builder: (context, state) {
            if (state.status == RecordingScreenStatus.play) {
              return PlayPage();
            } else {
              return RecordPage();
            }
          },
        ),
      ),
    );
  }
}
