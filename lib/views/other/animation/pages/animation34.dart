import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// import 'package:rive/rive.dart';

class AnimationPage34 extends StatefulWidget {
  const AnimationPage34({Key? key}) : super(key: key);

  @override
  State<AnimationPage34> createState() => _AnimationPage34State();
}

class _AnimationPage34State extends State<AnimationPage34> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('嵌入式 - Rive/Flare/lottie'),
      ),
      body: PageView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Lottie动画',
                style: TextStyle(
                  fontSize: 20,
                  height: 2,
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Lottie.asset('assets/lottie/girl.json'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'RiveAnimation',
                style: TextStyle(
                  fontSize: 20,
                  height: 2,
                ),
              ),
              // Expanded(
              //   flex: 1,
              //   child: Center(
              //     child: RiveAnimation.asset('assets/rive/writing-girl.riv'),
              //   ),
              // ),
            ],
          ),
        ),
      ]),
    );
  }
}
