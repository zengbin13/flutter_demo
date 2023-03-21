import 'package:flutter/material.dart';

class AnimationPage23 extends StatefulWidget {
  const AnimationPage23({Key? key}) : super(key: key);

  @override
  State<AnimationPage23> createState() => _AnimationPage23State();
}

class _AnimationPage23State extends State<AnimationPage23>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);
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
        title: const Text('控制器串联补间(Tween)和曲线(Curve)'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.stop();
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        // 方式 1 _controller.drive()
        // 将Tween值 转换为一系列的值 即Animation<Offset>
        // _controller.drive( Tween(begin: const Offset(0, 0), end: const Offset(0.5, 0)))

        //方式 2 Tween.animation()
        // 方便串联动画曲线 .chain()
        // Tween(begin: const Offset(0, 0), end: const Offset(0, 0.5)

        child: SlideTransition(
          position: Tween(begin: Offset.zero, end: const Offset(0, 0.5))
              .chain(CurveTween(curve: Curves.ease))
              .chain(CurveTween(curve: const Interval(0.1, 0.6)))
              .animate(_controller),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple[100],
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            width: 300,
            height: 300,
            child: const Text(
              '串联补间(Tween)和曲线(Curve)',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
