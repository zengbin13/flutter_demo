import 'package:flutter/material.dart';

class SliverPage13 extends StatefulWidget {
  const SliverPage13({Key? key}) : super(key: key);

  @override
  State<SliverPage13> createState() => _SliverPage13State();
}

class _SliverPage13State extends State<SliverPage13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: false, //标题栏是否固定
          floating: true, //滑动时是否悬浮
          snap: true, //配合floating使用
          expandedHeight: 300,
          stretch: true,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax, //视差
            stretchModes: const [
              StretchMode.blurBackground,
              StretchMode.zoomBackground,
              StretchMode.fadeTitle,
            ],
            background: Image.network(
              'https://images.pexels.com/photos/12531216/pexels-photo-12531216.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              fit: BoxFit.cover,
            ),
            centerTitle: false,
            expandedTitleScale: 1.2,
            title: const Text(
              'SliverAppBar',
            ),
          ),
        ),
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (conetx, index) {
            return Container(
              color: Colors.primaries[index % 18].shade300,
            );
          },
        )
      ]),
    );
  }
}
