
import 'dart:math';

import 'package:flutter/material.dart';

class SnowmanPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    final paintbuttonAndEyes = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    const startAngle = -pi / 3.9;
    const sweepAngle = 1.51 * pi;
    const startAngleSecond = -pi / 3.0;
    const sweepAngleSecond = 1.67 * pi;

    //! Draw snowman body
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height * 1), radius: 90),
        startAngle,
        sweepAngle,
        false,
        paint);
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height * 0.65), radius: 75),
        startAngleSecond,
        sweepAngleSecond,
        false,
        paint);

    canvas.drawCircle(Offset(size.width / 2, size.height * 0.30), 55, paint);

    //! Draw snowman Left arm
    final snowmanLeftArmPath = Path();
    snowmanLeftArmPath.moveTo(size.width / 4, size.height / 1.7);
    snowmanLeftArmPath.lineTo(size.width / 6 - 75, size.height / 2);
    snowmanLeftArmPath.lineTo(size.width / 6 - 85, size.height / 2 - 15);
    snowmanLeftArmPath.lineTo(size.width / 6 - 90, size.height / 2 - 12);
    snowmanLeftArmPath.lineTo(size.width / 6 - 82, size.height / 2);
    snowmanLeftArmPath.lineTo(size.width / 6 - 100, size.height / 2);
    snowmanLeftArmPath.lineTo(size.width / 6 - 100, size.height / 2 + 4.5);
    snowmanLeftArmPath.lineTo(size.width / 6 - 85, size.height / 2 + 4.5);
    snowmanLeftArmPath.lineTo(size.width / 6 - 100, size.height / 2 + 14);
    snowmanLeftArmPath.lineTo(size.width / 6 - 95, size.height / 2 + 18);
    snowmanLeftArmPath.lineTo(size.width / 6 - 75, size.height / 2 + 6);
    snowmanLeftArmPath.lineTo(size.width / 4, size.height / 1.65);

    snowmanLeftArmPath.close();
    final paintArms = Paint()
      ..color = Colors.brown
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;
    canvas.drawPath(snowmanLeftArmPath, paintArms);
    //! Draw snowman Right arm
    final snowmanRightArmPath = Path();
    snowmanRightArmPath.moveTo(size.width / 4 * 3, size.height / 1.7);
    snowmanRightArmPath.lineTo(size.width / 6 * 5 + 75, size.height / 2);
    snowmanRightArmPath.lineTo(size.width / 6 * 5 + 85, size.height / 2 - 15);
    snowmanRightArmPath.lineTo(size.width / 6 * 5 + 90, size.height / 2 - 12);
    snowmanRightArmPath.lineTo(size.width / 6 * 5 + 82, size.height / 2);
    snowmanRightArmPath.lineTo(size.width / 6 * 5 + 100, size.height / 2);
    snowmanRightArmPath.lineTo(size.width / 6 * 5 + 100, size.height / 2 + 4.5);
    snowmanRightArmPath.lineTo(size.width / 6 * 5 + 85, size.height / 2 + 4.5);
    snowmanRightArmPath.lineTo(size.width / 6 * 5 + 100, size.height / 2 + 14);
    snowmanRightArmPath.lineTo(size.width / 6 * 5 + 95, size.height / 2 + 18);
    snowmanRightArmPath.lineTo(size.width / 6 * 5 + 75, size.height / 2 + 6);
    snowmanRightArmPath.lineTo(size.width / 4 * 3, size.height / 1.65);

    snowmanRightArmPath.close();
    final paintRightArm = Paint()
      ..color = Colors.brown
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;
    canvas.drawPath(snowmanRightArmPath, paintRightArm);

    //! Draw snowman eyes
    paint.color = Colors.black;
    canvas.drawCircle(
        Offset(size.width / 1.55, size.height * 0.25), 5, paintbuttonAndEyes);
    canvas.drawCircle(
        Offset(size.width / 1.95, size.height * 0.25), 5, paintbuttonAndEyes);

    //! Draw snowman Mouth
    canvas.drawCircle(
        Offset(size.width / 1.5, size.height * 0.38), 3, paintbuttonAndEyes);
    canvas.drawCircle(
        Offset(size.width / 1.63, size.height * 0.40), 3, paintbuttonAndEyes);
    canvas.drawCircle(
        Offset(size.width / 1.82, size.height * 0.4), 3, paintbuttonAndEyes);
    canvas.drawCircle(
        Offset(size.width / 2, size.height * 0.38), 3, paintbuttonAndEyes);

    //! Draw snowman buttons
    canvas.drawCircle(
        Offset(size.width / 1.8, size.height * 0.55), 5, paintbuttonAndEyes);
    canvas.drawCircle(
        Offset(size.width / 1.8, size.height * 0.63), 5, paintbuttonAndEyes);
    canvas.drawCircle(
        Offset(size.width / 1.8, size.height * 0.70), 5, paintbuttonAndEyes);
    //! Draw snowman nose (carrot)
    Path carrotPath = Path();
    carrotPath.moveTo(size.width / 1.85, size.height * 0.3);
    carrotPath.lineTo(size.width / 1.75, size.height * 0.35);
    carrotPath.lineTo(size.width / 1, size.height * 0.3);
    carrotPath.close();

    final paintNose = Paint()
      ..color = Colors.orange
      ..strokeWidth = 2
      ..strokeWidth = 3
      ..style = PaintingStyle.fill;
    canvas.drawPath(carrotPath, paintNose);
    //! Draw snowman hat
    final hatBodyPath = Path();
    hatBodyPath.moveTo(size.width / 1.5, size.height * 0.18);
    hatBodyPath.lineTo(size.width / 1.5, size.height * 0.08);
    hatBodyPath.lineTo(size.width / 2.5, size.height * 0.08);
    hatBodyPath.lineTo(size.width / 2.5, size.height * 0.18);
    hatBodyPath.close();

    final hatBrimPath = Path();
    hatBrimPath.addArc(
        Rect.fromCenter(
            center: Offset(size.width / 1.9, size.height * 0.07),
            width: 90,
            height: 40),
        0,
        pi);

    final hatRibbonPath = Path();
    hatRibbonPath.moveTo(size.width / 2.75, size.height * 0.11);
    hatRibbonPath.lineTo(size.width / 1.45, size.height * 0.11);
    hatRibbonPath.lineTo(size.width / 1.45, size.height * 0.14);
    hatRibbonPath.lineTo(size.width / 2.75, size.height * 0.14);
    hatRibbonPath.close();

    final paintHatBody = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final paintHatBrim = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final paintHatRibbon = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    canvas.drawPath(hatBodyPath, paintHatBody);
    canvas.drawPath(hatBrimPath, paintHatBrim);
    canvas.drawPath(hatRibbonPath, paintHatRibbon);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
