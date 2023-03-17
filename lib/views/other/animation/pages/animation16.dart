import 'package:flutter/material.dart';

class AnimationPage16 extends StatefulWidget {
  const AnimationPage16({Key? key}) : super(key: key);

  @override
  State<AnimationPage16> createState() => _AnimationPage16State();
}

class _AnimationPage16State extends State<AnimationPage16> {
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
          width: 320,
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimationCount(
                count: (_endValue ~/ 100).toDouble(),
                duration: const Duration(seconds: 1),
              ),
              AnimationCount(
                count: (_endValue % 100 ~/ 10).toDouble(),
                duration: const Duration(seconds: 1),
              ),
              AnimationCount(
                count: (_endValue % 10 ~/ 1).toDouble(),
                duration: const Duration(seconds: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimationCount extends StatelessWidget {
  const AnimationCount({
    super.key,
    required this.count,
    required this.duration,
  });

  final double count;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: duration,
      tween: Tween<double>(begin: 0, end: count),
      curve: Curves.ease,
      builder: (BuildContext context, double value, Widget? child) {
        final whole = value ~/ 1;
        final decimal = value - whole;
        print('$whole - $decimal');
        return Container(
          height: 100,
          width: 75,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2),
          ),
          child: Stack(
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
          ),
        );
      },
    );
  }
}
