import 'package:flutter/material.dart';

class AnimationPage25 extends StatefulWidget {
  const AnimationPage25({Key? key}) : super(key: key);

  @override
  State<AnimationPage25> createState() => _AnimationPage25State();
}

class _AnimationPage25State extends State<AnimationPage25> {
  double _height = 200;
  double _opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('隐式动画 - 动画控件及曲线Curves'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _height = _opacity == 0 ? 200 : 0;
            _opacity = _opacity == 0 ? 1 : 0;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: AnimatedPadding(
          duration: const Duration(seconds: 2),
          padding: EdgeInsets.only(bottom: _height),
          curve: Curves.bounceOut,
          child: AnimatedOpacity(
            //动画曲线默认值 Curves.linear
            curve: Curves.ease,
            duration: const Duration(seconds: 3),
            opacity: _opacity,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(10),
              ),
              width: 300,
              height: 300,
              alignment: Alignment.center,
              child: const Text('动画控件及曲线Curves'),
            ),
          ),
        ),
      ),
    );
  }
}
