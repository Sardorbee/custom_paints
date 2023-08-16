import 'package:flutter/material.dart';

class FlagScreen extends StatefulWidget {
  const FlagScreen({super.key});

  @override
  State<FlagScreen> createState() => _FlagScreenState();
}

class _FlagScreenState extends State<FlagScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint("flag building");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flag Screen"),
      ),
      body: Center(
        child: CustomPaint(
          size: const Size(300, 200), 
          painter: UzbekistanFlagPainter(),
        ),
      ),
    );
  }
}

class UzbekistanFlagPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final bluePaint = Paint()..color = Colors.blue;
    final whitePaint = Paint()..color = Colors.white;
    final redPaint = Paint()..color = Colors.red;
    final greenPaint = Paint()..color = Colors.green;
    final starPaint = Paint()..color = Colors.white;

    final stripeHeight = size.height / 3;
    const lineHeight = 5.0;
    final crescentRadius = stripeHeight / 2;
    final flagWidth = size.width;

    canvas.drawRect(Rect.fromLTWH(0, 0, flagWidth, stripeHeight), bluePaint);
    canvas.drawRect(Rect.fromLTWH(0, 63, flagWidth, lineHeight), redPaint);

    canvas.drawRect(
        Rect.fromLTWH(0, stripeHeight, flagWidth, stripeHeight), whitePaint);
    canvas.drawRect(Rect.fromLTWH(0, 130, flagWidth, lineHeight), redPaint);

    canvas.drawRect(Rect.fromLTWH(0, stripeHeight * 2, flagWidth, stripeHeight),
        greenPaint);

    //! Stars
    Path generateStarPath(double x, double y) {
      return Path()
        ..moveTo(x, y)
        ..lineTo(x + 5, y + 14)
        ..lineTo(x - 7, y + 5)
        ..lineTo(x + 7, y + 5)
        ..lineTo(x - 5, y + 14)
        ..close();
    }

    final starPathFirst =
        generateStarPath(crescentRadius * 1.5, stripeHeight / 2 + 6);
    final starPathSecond =
        generateStarPath(crescentRadius * 2, stripeHeight / 2 + 6);
    final starPathThird =
        generateStarPath(crescentRadius * 2.5, stripeHeight / 2 + 6);
    final starPathFourth =
        generateStarPath(crescentRadius * 3, stripeHeight / 2 + 6);
    final starPathFifth =
        generateStarPath(crescentRadius * 3.5, stripeHeight / 2 + 6);
    final starPathSixth =
        generateStarPath(crescentRadius * 2, stripeHeight / 2 - 9);
    final starPathSeventh =
        generateStarPath(crescentRadius * 2.5, stripeHeight / 2 - 9);
    final starPathEighth =
        generateStarPath(crescentRadius * 3, stripeHeight / 2 - 9);
    final starPathNineth =
        generateStarPath(crescentRadius * 3.5, stripeHeight / 2 - 9);
    final starPathTenth =
        generateStarPath(crescentRadius * 2.5, stripeHeight / 2 - 23);
    final starPathEleventh =
        generateStarPath(crescentRadius * 3, stripeHeight / 2 - 23);
    final starPathTwelweth =
        generateStarPath(crescentRadius * 3.5, stripeHeight / 2 - 23);

    canvas.drawPath(starPathFirst, starPaint);
    canvas.drawPath(starPathSecond, starPaint);
    canvas.drawPath(starPathThird, starPaint);
    canvas.drawPath(starPathFourth, starPaint);
    canvas.drawPath(starPathFifth, starPaint);
    canvas.drawPath(starPathSixth, starPaint);
    canvas.drawPath(starPathSeventh, starPaint);
    canvas.drawPath(starPathEighth, starPaint);
    canvas.drawPath(starPathNineth, starPaint);
    canvas.drawPath(starPathTenth, starPaint);
    canvas.drawPath(starPathEleventh, starPaint);
    canvas.drawPath(starPathTwelweth, starPaint);
//! Moon
    Paint paintFill1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1152549, size.height * 0.0489055);
    path_1.cubicTo(
        size.width * 0.1216571,
        size.height * 0.0448300,
        size.width * 0.0799020,
        size.height * 0.0891711,
        size.width * 0.0739667,
        size.height * 0.1548813);
    path_1.cubicTo(
        size.width * 0.0738259,
        size.height * 0.1557236,
        size.width * 0.0756635,
        size.height * 0.2245447,
        size.width * 0.1153735,
        size.height * 0.2656662);
    path_1.cubicTo(
        size.width * 0.1024431,
        size.height * 0.2804330,
        size.width * 0.0491359,
        size.height * 0.2160134,
        size.width * 0.0523074,
        size.height * 0.1514307);
    path_1.cubicTo(
        size.width * 0.0543303,
        size.height * 0.1226851,
        size.width * 0.0788054,
        size.height * 0.0489055,
        size.width * 0.1152549,
        size.height * 0.0489055);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);
    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
