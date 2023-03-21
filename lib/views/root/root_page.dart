import 'package:flutter/material.dart';
import 'package:flutter_demo/views/index.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'widget/root_page_view.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key, this.tabbarIndex = 0}) : super(key: key);
  final int tabbarIndex;
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return RootPageView(
      initIndex: widget.tabbarIndex,
      tabBarList: [
        TabbarData(
          item: const BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '首页',
          ),
          page: const HomePage(),
        ),
        TabbarData(
          item: const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '我的',
          ),
          page: const ProfilePage(),
        ),
      ],
    );
  }
}
