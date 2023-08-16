import 'package:custom_paints/ui/snowman_screen/widgets/snowman_painter.dart';
import 'package:flutter/material.dart';

class SnowmanScreen extends StatefulWidget {
  const SnowmanScreen({super.key});

  @override
  State<SnowmanScreen> createState() => _SnowmanScreenState();
}

class _SnowmanScreenState extends State<SnowmanScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Snowman building");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Snowman Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            CustomPaint(
              size: const Size(200, 300),
              painter: SnowmanPainter(),
            ),
          ],
        ),
      ),
    );
  }
}
