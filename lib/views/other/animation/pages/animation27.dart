import 'package:flutter/material.dart';

class AnimationPage27 extends StatefulWidget {
  const AnimationPage27({Key? key}) : super(key: key);

  @override
  State<AnimationPage27> createState() => _AnimationPage27State();
}

class _AnimationPage27State extends State<AnimationPage27>
    with TickerProviderStateMixin {
  late AnimationController _expansionController;
  late AnimationController _opacityController;

  @override
  void initState() {
    _expansionController = AnimationController(
      vsync: this,
    );
    _opacityController = AnimationController(
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _expansionController.dispose();
    _opacityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('多个动画控制器 - TickerProviderStateMixin'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _expansionController.duration = const Duration(seconds: 4);
          _expansionController.forward();

          await Future.delayed(const Duration(seconds: 4));
          _opacityController.duration = const Duration(seconds: 1);
          _opacityController.repeat(reverse: true);

          await Future.delayed(const Duration(seconds: 7));
          _opacityController.reset();
          _expansionController.duration = const Duration(seconds: 8);
          _expansionController.reverse();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: FadeTransition(
          opacity: Tween(begin: 1.0, end: 0.5).animate(_opacityController),
          child: AnimatedBuilder(
            animation: _expansionController,
            builder: (BuildContext context, Widget? child) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [Colors.blue[600]!, Colors.blue[100]!],
                    stops: [
                      _expansionController.value,
                      _expansionController.value + 0.1
                    ],
                  ),
                ),
                width: 200,
                height: 200,
              );
            },
          ),
        ),
      ),
    );
  }
}
