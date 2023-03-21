import 'package:flutter/material.dart';
import 'package:flutter_demo/views/other/animation/pages/hero_detail.dart';

class AnimationPage32 extends StatefulWidget {
  const AnimationPage32({Key? key}) : super(key: key);

  @override
  State<AnimationPage32> createState() => _AnimationPage32State();
}

class _AnimationPage32State extends State<AnimationPage32> {
  final List<String> imgList = [
    'https://images.pexels.com/photos/2512281/pexels-photo-2512281.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/2058498/pexels-photo-2058498.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/2395251/pexels-photo-2395251.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/1167050/pexels-photo-1167050.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/931168/pexels-photo-931168.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/350349/pexels-photo-350349.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/699963/pexels-photo-699963.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/3686216/pexels-photo-3686216.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/1767428/pexels-photo-1767428.jpeg?auto=compress&cs=tinysrgb&w=1600',
    'https://images.pexels.com/photos/2101187/pexels-photo-2101187.jpeg?auto=compress&cs=tinysrgb&w=1600',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('主动画 - Hero'),
      ),
      body: GridView.count(
        crossAxisCount: 5,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(
          imgList.length,
          (index) {
            final String path = imgList[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return HeroDetailPage(path: path);
                }));
              },
              child: Hero(
                tag: path,
                child: ClipOval(
                  child: Image.network(
                    path,
                    fit: BoxFit.cover,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      return Container(
                        color: Colors.grey[100],
                        child: child,
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
