import 'package:flutter/material.dart';

class AnimationPage12 extends StatefulWidget {
  const AnimationPage12({Key? key}) : super(key: key);

  @override
  State<AnimationPage12> createState() => _AnimationPage12State();
}

class _AnimationPage12State extends State<AnimationPage12> {
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('隐式动画 - AnimatedSwitcher'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _loading = !_loading;
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
          height: 300,
          width: 300,
          //在不同控件之间切换的过渡动画
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 800),
            //使用默认的显式动画 - 渐入渐出
            transitionBuilder: (child, animation) {
              return ScaleTransition(
                scale: animation,
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            },
            child: _loading
                ? const CircularProgressIndicator()
                : Image.network(
                    'https://images.pexels.com/photos/9060306/pexels-photo-9060306.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
      ),
    );
  }
}
