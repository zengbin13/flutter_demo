import 'package:flutter/material.dart';

class AnimationPage11 extends StatefulWidget {
  const AnimationPage11({Key? key}) : super(key: key);

  @override
  State<AnimationPage11> createState() => _AnimationPage11State();
}

class _AnimationPage11State extends State<AnimationPage11> {
  double _height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('隐式动画 - AnimatedContainer'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _height += 150;
            if (_height > 500) _height = 150;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: Colors.purple[100],
            borderRadius: BorderRadius.circular(10),
          ),
          width: 300,
          alignment: Alignment.center,
          height: _height,
          child: const Text('隐式动画 AnimatedContainer'),
        ),
      ),
    );
  }
}
