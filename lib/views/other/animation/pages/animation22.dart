import 'package:flutter/material.dart';

class AnimationPage22 extends StatefulWidget {
  const AnimationPage22({Key? key}) : super(key: key);

  @override
  State<AnimationPage22> createState() => _AnimationPage22State();
}

class _AnimationPage22State extends State<AnimationPage22>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  bool _loading = false;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      lowerBound: 0.5, //下限值
      upperBound: 1.5, //上限值
      /**
       * 垂直同步
       * 屏幕什么时间需要显示新的一帧 如60帧 16ms渲染新的一帧
       * 由SingleTickerProviderStateMixin提供 
       * 在initState中this才能取到
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
        title: const Text('动画控制器是什么 - AnimationController'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _controller.forward(); 从头执行一次
          //  _controller.stop(); 暂停执行
          // _controller.repeat(); 重复执行 reverse 反转
          if (_loading) {
            _controller.stop();
          } else {
            _controller.repeat(reverse: true);
          }
          _loading = !_loading;
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _controller,
          child: ScaleTransition(
            scale: _controller,
            child: Image.network(
              'https://images.pexels.com/photos/9060306/pexels-photo-9060306.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
