import 'package:flutter/material.dart';

class AnimationPage14 extends StatefulWidget {
  const AnimationPage14({Key? key}) : super(key: key);

  @override
  State<AnimationPage14> createState() => _AnimationPage14State();
}

class _AnimationPage14State extends State<AnimationPage14> {
  double endValue = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('万能的补间动画 - TweenAminationBuilder'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            endValue += 1;
            if (endValue > 3) endValue = 1;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 1, end: endValue),
          duration: const Duration(seconds: 2),
          builder: (BuildContext context, double value, Widget? child) {
            //补间值由上次保留至到end值, 保留值首次为begin的值
            print('根据duration 所计算的补间值 $value');
            return Transform.translate(
              offset: Offset(value * 50 - 50, 0),
              child: Container(
                width: 50 + 50 * value,
                height: 50 + 50 * value,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(20 * value),
                ),
                alignment: Alignment.center,
                child: child,
              ),
            );
          },
          //作为性能优化部分 不变的子widget
          child: const Text(
            '补间动画',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
