import 'package:flutter/material.dart';

class HeroDetailPage extends StatefulWidget {
  const HeroDetailPage({Key? key, required this.path}) : super(key: key);
  final String path;

  @override
  State<HeroDetailPage> createState() => _HeroDetailPageState();
}

class _HeroDetailPageState extends State<HeroDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HeroDetailPage'),
      ),
      body: Column(
        children: [
          Hero(
            tag: widget.path,
            child: Container(
              alignment: Alignment.center,
              height: 300,
              child: Image.network(
                widget.path,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            child: Text(
              '三月的末梢，花的盛开总在不经意间，宛若一夜花开，风吹过的淡淡清香，风飘来的片片花瓣，使我想起一种普通的植物，它与小麦、水稻等植物相依相伴，它的到来使田野别有一番风韵，原本绿色的画卷出现了斑斑点点的金黄色，这是上天不经意间把它的光彩投下了田野。渐渐的，田野换上了一身新妆如阳光般灿烂，它像是初春到来的一抹清澈的阳光将自己的光辉洒向大地，为农田着上新装。',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
