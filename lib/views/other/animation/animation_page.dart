import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('动画'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => context.push('/other/animation/1-1'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('隐')),
                label: Text('隐式动画 - AnimatedContainer'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/1-2'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('隐')),
                label: Text('隐式动画 - AnimatedSwitcher'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/1-3'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('隐')),
                label: Text('隐式动画 - 动画控件及曲线Curves'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/1-4'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('补')),
                label: Text('万能的补间动画 - TweenAminationBuilder'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/1-5'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('计')),
                label: Text('翻滚吧！计数器！上'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/1-6'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('计')),
                label: Text('翻滚吧！计数器！下'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/2-1'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('显')),
                label: Text('无限旋转的显式动画 - RotationTransition'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/2-2'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('控')),
                label: Text('动画控制器是什么 - AnimationController'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/2-3'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('控')),
                label: Text('隐式动画 - 动画控件及曲线Curves'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/2-4'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('补')),
                label: Text('万能的补间动画 - TweenAminationBuilder'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/2-5'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('计')),
                label: Text('翻滚吧！计数器！上'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/2-6'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('计')),
                label: Text('翻滚吧！计数器！下'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
