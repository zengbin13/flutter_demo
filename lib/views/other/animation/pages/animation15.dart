import 'package:flutter/material.dart';

class AnimationPage15 extends StatefulWidget {
  const AnimationPage15({Key? key}) : super(key: key);

  @override
  State<AnimationPage15> createState() => _AnimationPage15State();
}

class _AnimationPage15State extends State<AnimationPage15> {
  double _endValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('翻滚吧！计数器！'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _endValue += 1;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.purple[100],
            borderRadius: BorderRadius.circular(10),
          ),
          width: 300,
          height: 100,
          child: TweenAnimationBuilder(
            duration: const Duration(seconds: 2),
            tween: Tween<double>(begin: 0, end: _endValue),
            curve: Curves.ease,
            builder: (BuildContext context, double value, Widget? child) {
              final whole = value ~/ 1;
              final decimal = value - whole;
              return Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: -100 * decimal, // 0 > -100
                    child: Opacity(
                      opacity: 1 - decimal, // 1 > 0
                      child: Text(
                        whole.toString(),
                        style: const TextStyle(
                          fontSize: 72,
                          height: 100 / 72,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100 * (1 - decimal), // 100 > 0
                    child: Opacity(
                      opacity: decimal, // 0 > 1
                      child: Text(
                        (whole + 1).toString(),
                        style: const TextStyle(
                          fontSize: 72,
                          height: 100 / 72,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
