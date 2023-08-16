import 'dart:math';

import 'package:flutter/material.dart';

class EmojiPage extends StatelessWidget {
  const EmojiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Emojis'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EmojiWidget(
              emoji: Emoji.smile,
              size: 100.0,
            ),
            SizedBox(height: 20.0),
            EmojiWidget(
              emoji: Emoji.sad,
              size: 100.0,
            ),
            SizedBox(height: 20.0),
            EmojiWidget(
              emoji: Emoji.norm,
              size: 100.0,
            ),
            SizedBox(height: 20.0),
            EmojiWidget(
              emoji: Emoji.good,
              size: 100.0,
            ),
            SizedBox(height: 20.0),
            EmojiWidget(
              emoji: Emoji.crying,
              size: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}

enum Emoji { smile, sad, norm, good, crying }

class EmojiPainter extends CustomPainter {
  final Emoji emoji;
  EmojiPainter({required this.emoji});

  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    final paint2 = Paint()
      ..color = Colors.amber
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    final paint3 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    final paint4 = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    final centerX = size.width / 2;
    final centerY = size.height / 2;

    switch (emoji) {
      case Emoji.smile:
        canvas.drawCircle(Offset(centerX, centerY), size.width / 2, paint1);
        canvas.drawCircle(Offset(centerX - 20, centerY - 15), 5.0,
            Paint()..color = Colors.green);
        canvas.drawCircle(Offset(centerX + 20, centerY - 15), 5.0,
            Paint()..color = Colors.green);
        canvas.drawArc(
          Rect.fromCircle(center: Offset(centerX, centerY * 1.6), radius: 20),
          -0.3,
          -2.4,
          false,
          Paint()
            ..color = Colors.green
            ..strokeWidth = 10
            ..strokeCap = StrokeCap.round
            ..style = PaintingStyle.stroke,
        );
        break;
      case Emoji.sad:
        canvas.drawCircle(Offset(centerX, centerY), size.width / 2, paint2);
        canvas.drawArc(
          Rect.fromCircle(
              center: Offset(centerX - 20, centerY - 25), radius: 10),
          0.2,
          1.5,
          false,
          Paint()
            ..color = Colors.amber
            ..strokeWidth = 6
            ..strokeCap = StrokeCap.round
            ..style = PaintingStyle.stroke,
        );
        canvas.drawArc(
          Rect.fromCircle(
              center: Offset(centerX + 20, centerY - 25), radius: 10),
          1.5,
          1.5,
          false,
          Paint()
            ..color = Colors.amber
            ..strokeWidth = 6
            ..strokeCap = StrokeCap.round
            ..style = PaintingStyle.stroke,
        );
        canvas.drawArc(
          Rect.fromCircle(center: Offset(centerX, centerY + 20), radius: 20),
          -3.2,
          3.2,
          false,
          Paint()
            ..color = Colors.amber
            ..strokeWidth = 7
            ..strokeCap = StrokeCap.round
            ..style = PaintingStyle.stroke,
        );
        break;
      case Emoji.norm:
        canvas.drawCircle(Offset(centerX, centerY), size.width / 2, paint3);
        canvas.drawCircle(Offset(centerX - 20, centerY - 10), 5.0,
            Paint()..color = Colors.blue);
        canvas.drawCircle(Offset(centerX + 20, centerY - 10), 5.0,
            Paint()..color = Colors.blue);
        canvas.drawArc(
          Rect.fromCircle(center: Offset(centerX, centerY * 1.2), radius: 20),
          0.25,
          2.6,
          false,
          Paint()
            ..color = Colors.blue
            ..strokeWidth = 7
            ..strokeCap = StrokeCap.round
            ..style = PaintingStyle.stroke,
        );
        break;
      case Emoji.good:
        canvas.drawCircle(Offset(centerX, centerY), size.width / 2, paint4);
        canvas.drawCircle(Offset(centerX - 15, centerY - 8), 5.0,
            Paint()..color = Colors.purple);
        canvas.drawCircle(Offset(centerX + 15, centerY - 8), 5.0,
            Paint()..color = Colors.purple);
        canvas.drawRect(
            Rect.fromLTWH(centerX - 25, centerY + 10, 50, 10),
            Paint()
              ..color = Colors.purple
              ..strokeCap = StrokeCap.round);
      case Emoji.crying:
        //!bottom
        final rect = Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: 40,
        );

        const startAngle = pi / 3.5;
        const sweepAngle = pi / 2.7;
        const useCenter = false;

        final paint = Paint()
          ..color = Colors.red
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5
          ..strokeCap = StrokeCap.round;

        //! up
        final rectup = Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: 40,
        );

        const startAngleup = -pi * 4;
        const sweepAngleup = -pi / 0.89;
        const useCenterup = false;

        Paint paintup = Paint()
          ..color = Colors.red
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 5;

        Path eyeEmojiEyeCrying = Path();
        eyeEmojiEyeCrying.moveTo(size.width / 3.5, size.height / 2.4);
        eyeEmojiEyeCrying.lineTo(size.width / 2.3, size.height / 2.8);
        eyeEmojiEyeCrying.close();
        Path eyeEmojiRightEyeCrying = Path();
        eyeEmojiRightEyeCrying.moveTo(size.width / 1.4, size.height / 2.4);
        eyeEmojiRightEyeCrying.lineTo(
            size.width / 2.3 + 14, size.height / 2.82);
        eyeEmojiRightEyeCrying.close();
        final arcMouth = Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 1.5),
          radius: 20,
        );

        const startAngleMouth = pi;
        const sweepAnglemouth = pi;
        const useCenterMouth = false;

        final paintMouth = Paint()
          ..color = Colors.red
          ..style = PaintingStyle.fill
          ..strokeWidth = 5;

        Paint paintFill1 = Paint()
          ..color = const Color.fromARGB(255, 255, 0, 0)
          ..style = PaintingStyle.fill
          ..strokeWidth = size.width * 0.00
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;

        Path path_1 = Path();
        path_1.moveTo(size.width * 0.1860126, size.height * 0.7257833);
        path_1.lineTo(size.width * 0.1362625, size.height * 0.9019000);
        path_1.lineTo(size.width * 0.1284817, size.height * 0.9201333);
        path_1.lineTo(size.width * 0.1280134, size.height * 0.9488833);
        path_1.lineTo(size.width * 0.1237132, size.height * 0.9512167);
        path_1.lineTo(size.width * 0.1355600, size.height * 0.9774167);
        path_1.lineTo(size.width * 0.1643201, size.height * 1.01);
        path_1.lineTo(size.width * 0.2016380, size.height * 1.01);
        path_1.lineTo(size.width * 0.2374444, size.height * 1.01);
        path_1.lineTo(size.width * 0.2660981, size.height * 0.9889500);
        path_1.lineTo(size.width * 0.2637990, size.height * 0.9924667);
        path_1.lineTo(size.width * 0.2775298, size.height * 0.9645500);
        path_1.lineTo(size.width * 0.2808507, size.height * 0.9495167);
        path_1.lineTo(size.width * 0.2766570, size.height * 0.9062500);
        path_1.lineTo(size.width * 0.1860126, size.height * 0.7257833);
        path_1.close();

        Paint paintStroke1 = Paint()
          ..color = const Color.fromARGB(255, 255, 0, 0)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.width * 0.00
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;

        Paint secondDropPaint = Paint()
          ..strokeWidth = 3
          ..style = PaintingStyle.fill
          ..color = Colors.red;

        Path secondDrop = Path();
        secondDrop.moveTo(size.width * 0.85, size.height * 0.55);
        secondDrop.lineTo(size.width * 0.95, size.height * 0.75);
        secondDrop.lineTo(size.width * 0.95, size.height * 0.78);
        secondDrop.lineTo(size.width * 0.93, size.height * 0.80);
        secondDrop.lineTo(size.width * 0.91, size.height * 0.82);
        secondDrop.lineTo(size.width * 0.89, size.height * 0.84);
        secondDrop.lineTo(size.width * 0.85, size.height * 0.84);
        secondDrop.lineTo(size.width * 0.83, size.height * 0.84);
        secondDrop.lineTo(size.width * 0.80, size.height * 0.82);
        secondDrop.lineTo(size.width * 0.78, size.height * 0.80);
        secondDrop.lineTo(size.width * 0.76, size.height * 0.78);
        secondDrop.lineTo(size.width * 0.76, size.height * 0.75);

        canvas.drawPath(secondDrop, secondDropPaint);

        canvas.drawPath(path_1, paintFill1);
        canvas.drawPath(path_1, paintStroke1);
        canvas.drawArc(arcMouth, startAngleMouth, sweepAnglemouth,
            useCenterMouth, paintMouth);
        canvas.drawArc(
            rectup, startAngleup, sweepAngleup, useCenterup, paintup);
        canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
        canvas.drawPath(eyeEmojiEyeCrying, paint);
        canvas.drawPath(eyeEmojiRightEyeCrying, paint);
        break;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class EmojiWidget extends StatelessWidget {
  final Emoji emoji;
  final double size;

  const EmojiWidget({super.key, required this.emoji, required this.size});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: EmojiPainter(emoji: emoji),
      size: Size(size, size),
    );
  }
}
