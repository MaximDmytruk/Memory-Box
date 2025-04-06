import 'package:flutter/material.dart';
import 'package:memory_box/constants/painter/waveform_painter.dart';

class AudioWave extends StatelessWidget {
  final List<double> amplitudeHistory;

  const AudioWave({super.key, required this.amplitudeHistory});

  @override
  Widget build(BuildContext context) {
  
    return CustomPaint(
      size: Size(
        double.infinity,
        100,
      ),
      painter: WaveformPainter(
        amplitudeHistory: amplitudeHistory,
      ),
    );
  }
}
