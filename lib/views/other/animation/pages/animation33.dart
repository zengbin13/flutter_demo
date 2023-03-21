import 'dart:math';

import 'package:flutter/material.dart';

class AnimationPage33 extends StatefulWidget {
  const AnimationPage33({Key? key}) : super(key: key);

  @override
  State<AnimationPage33> createState() => _AnimationPage33State();
}

class _AnimationPage33State extends State<AnimationPage33>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 10))
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<Snowflake> _snowflakes =
      List.generate(500, (index) => Snowflake());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.lightBlue, Colors.white],
            stops: [0.0, 0.8, 1.0],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            // ignore: avoid_function_literals_in_foreach_calls
            _snowflakes.forEach((snow) => snow.fall());
            return CustomPaint(
              painter: MyPainter(snowflakes: _snowflakes),
            );
          },
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  const MyPainter({required this.snowflakes});
  final List<Snowflake> snowflakes;
  @override
  void paint(Canvas canvas, Size size) {
    final whitePaint = Paint()..color = Colors.white;
    canvas.drawCircle(
      size.center(Offset(0, size.height / 2 - 300)),
      72,
      whitePaint,
    );
    canvas.drawOval(
      Rect.fromCenter(
        center: size.center(Offset(0, size.height / 2 - 100)),
        width: 250,
        height: 320,
      ),
      whitePaint,
    );
    for (Snowflake element in snowflakes) {
      canvas.drawCircle(
        Offset(element.x, element.y),
        element.raduis,
        whitePaint,
      );
    }
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(MyPainter oldDelegate) => false;
}

class Snowflake {
  // final width = window.physicalSize.width;
  // final height = window.physicalSize.height;

  double raduis = Random().nextDouble() * 2 + 2;
  double velocity = Random().nextDouble() * 2 + 2;
  double x = Random().nextDouble() * 400;
  double y = Random().nextDouble() * 900;

  fall() {
    y += velocity;
    if (y >= 900) {
      raduis = Random().nextDouble() * 2 + 2;
      velocity = Random().nextDouble() * 2 + 2;
      x = Random().nextDouble() * 400;
      y = 0;
    }
  }
}
