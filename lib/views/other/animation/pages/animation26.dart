import 'package:flutter/material.dart';

class AnimationPage26 extends StatefulWidget {
  const AnimationPage26({Key? key}) : super(key: key);

  @override
  State<AnimationPage26> createState() => _AnimationPage26State();
}

class _AnimationPage26State extends State<AnimationPage26>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    );
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 方式1
    final Animation animation1 = Tween(begin: 0.0, end: 1.0)
        .chain(CurveTween(curve: const Interval(0, 0.2)))
        .animate(_controller);
    final Animation animation3 = Tween(begin: 1.0, end: 0.0)
        .chain(CurveTween(curve: const Interval(0.4, 0.95)))
        .animate(_controller);
    return Scaffold(
      appBar: AppBar(
        title: const Text('478呼吸法 - AnimatedBuilder'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // 方式2
          // _controller.duration = const Duration(seconds: 4);
          // _controller.forward();
          // await Future.delayed(const Duration(seconds: 7));
          // _controller.duration = const Duration(seconds: 8);
          // _controller.reverse();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Colors.blue[600]!, Colors.blue[100]!],
                  stops: _controller.value <= 0.2
                      ? [animation1.value, animation1.value + 0.1]
                      : [animation3.value, animation3.value + 0.1],
                ),
              ),
              width: 200,
              height: 200,
            );
          },
        ),
      ),
    );
  }
}
