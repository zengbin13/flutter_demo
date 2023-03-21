import 'package:flutter/material.dart';

class AnimationPage25 extends StatefulWidget {
  const AnimationPage25({Key? key}) : super(key: key);

  @override
  State<AnimationPage25> createState() => _AnimationPage25State();
}

class _AnimationPage25State extends State<AnimationPage25>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      lowerBound: 0.3,
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('显式自定义动画 - AnimatedBuilder'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              // 驱动方式1: 取动画控制器的值取值范围为 lowerBound upperBound
              opacity: _controller.value,
              child: Container(
                color: Colors.purple[300],
                alignment: Alignment.center,
                // 驱动方式2: 使用Tween.evaluate对动画取值
                width: Tween(begin: 100.0, end: 200.0)
                    .chain(CurveTween(curve: Curves.easeIn))
                    .evaluate(_controller),
                height: Tween(begin: 100.0, end: 200.0)
                    .chain(CurveTween(curve: Curves.easeOut))
                    .evaluate(_controller),
                child: child,
              ),
            );
          },
          child: const Text(
            'hi',
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
    );
  }
}
