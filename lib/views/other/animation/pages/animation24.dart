import 'package:flutter/material.dart';

class AnimationPage24 extends StatefulWidget {
  const AnimationPage24({Key? key}) : super(key: key);

  @override
  State<AnimationPage24> createState() => _AnimationPage24State();
}

class _AnimationPage24State extends State<AnimationPage24>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  bool _move = false;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('交错动画'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.repeat(reverse: true);
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlidexBox(
              controller: _controller,
              color: Colors.purple[100],
              interval: const Interval(0, 0.2),
            ),
            SlidexBox(
              controller: _controller,
              color: Colors.purple[300],
              interval: const Interval(0.2, 0.4),
            ),
            SlidexBox(
              controller: _controller,
              color: Colors.purple[500],
              interval: const Interval(0.4, 0.6),
            ),
            SlidexBox(
              controller: _controller,
              color: Colors.purple[700],
              interval: const Interval(0.6, 0.8),
            ),
            SlidexBox(
              controller: _controller,
              color: Colors.purple[900],
              interval: const Interval(0.8, 1.0),
            ),
          ],
        ),
      ),
    );
  }
}

class SlidexBox extends StatelessWidget {
  const SlidexBox({
    super.key,
    required AnimationController controller,
    required this.color,
    required this.interval,
  }) : _controller = controller;

  final AnimationController _controller;
  final Color? color;
  final Interval interval;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween(
        begin: Offset.zero,
        end: const Offset(0.1, 0),
      )
          .chain(CurveTween(curve: Curves.ease))
          .chain(CurveTween(curve: interval))
          .animate(_controller),
      child: Container(
        width: 300,
        height: 80,
        color: color,
      ),
    );
  }
}
