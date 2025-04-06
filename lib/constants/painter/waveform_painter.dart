import 'package:flutter/material.dart';

class WaveformPainter extends CustomPainter {
  final List<double> amplitudeHistory;
  // final double amplitudeScale;

  WaveformPainter({
    required this.amplitudeHistory,
    // this.amplitudeScale = 1,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final Paint linePaint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;

    final double centerY = size.height / 2;

    final int amplitudeLength = amplitudeHistory.length;
    if (amplitudeLength == 0) return;

    final double spacingStep = size.width / 100;
    final double maxX = amplitudeLength * spacingStep;

    canvas.drawLine(Offset(0, centerY), Offset(maxX, centerY), linePaint);

    for (int i = 0; i < amplitudeLength; i++) {
      double positionForAmplitude = i * spacingStep;
      double yTop = centerY - amplitudeHistory[i] * centerY;
      double yBottom = centerY + amplitudeHistory[i] * centerY;

      canvas.drawLine(Offset(positionForAmplitude, yTop),
          Offset(positionForAmplitude, yBottom), paint);
    }
  }

  @override
  bool shouldRepaint(WaveformPainter oldDelegate) =>
      oldDelegate.amplitudeHistory != amplitudeHistory;
}
