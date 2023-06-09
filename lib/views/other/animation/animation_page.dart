import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

export './pages/animation11.dart';
export './pages/animation12.dart';
export './pages/animation13.dart';
export './pages/animation14.dart';
export './pages/animation15.dart';
export './pages/animation16.dart';
export './pages/animation21.dart';
export './pages/animation22.dart';
export './pages/animation23.dart';
export './pages/animation24.dart';
export './pages/animation25.dart';
export './pages/animation26.dart';
export './pages/animation27.dart';
export './pages/animation32.dart';
export './pages/animation33.dart';
export './pages/animation34.dart';

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
                avatar: CircleAvatar(child: Text('补')),
                label: Text('控制器串联补间(Tween)和曲线'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/2-4'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('交')),
                label: Text('交错动画'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/2-5'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('显')),
                label: Text('显式自定义动画 - AnimatedBuilder'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/2-6'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('显')),
                label: Text('478呼吸法 - AnimatedBuilder'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/2-7'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('显')),
                label: Text('多个动画控制器 - TickerProviderStateMixin'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/3-2'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('H')),
                label: Text('主动画 - Hero'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/3-3'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('P')),
                label: Text('操作底层 - CustomPainter'),
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/other/animation/3-4'),
              child: const Chip(
                avatar: CircleAvatar(child: Text('嵌')),
                label: Text('嵌入式 - Rive/Flare/lottie'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
