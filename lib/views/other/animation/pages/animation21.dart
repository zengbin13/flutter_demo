import 'package:flutter/material.dart';

class AnimationPage21 extends StatefulWidget {
  const AnimationPage21({Key? key}) : super(key: key);

  @override
  State<AnimationPage21> createState() => _AnimationPage21State();
}

class _AnimationPage21State extends State<AnimationPage21>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  bool _loading = false;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      lowerBound: 0.2, //下限值
      upperBound: 1.2, //上限值
      /**
       * 垂直同步
       * 屏幕什么时间需要显示新的一帧 如60帧 16ms渲染新的一帧
       * 由SingleTickerProviderStateMixin提供 
       */
      vsync: this,
    )..addListener(() {
        // Animation<double> 一系列的变化值
        // _controller.value 在动画时间中对应上限、下限、动画曲线的值
        print(_controller.value);
      });
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
        title: const Text('无限旋转的显式动画 - RotationTransition'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _controller.forward(); 从头执行一次
          //  _controller.stop(); 暂停执行
          // _controller.repeat(); 重复执行 reverse 反转
          if (_loading) {
            _controller.stop();
          } else {
            _controller.repeat();
          }
          _loading = !_loading;
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: RotationTransition(
          turns: _controller,
          child: Icon(
            Icons.refresh,
            size: 72,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
