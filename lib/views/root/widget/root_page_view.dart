import 'package:flukit/flukit.dart';
import 'package:flutter/material.dart';

class TabbarData {
  TabbarData({
    required this.item,
    required this.page,
  });
  final BottomNavigationBarItem item;
  final Widget page;
}

class RootPageView extends StatefulWidget {
  const RootPageView({
    super.key,
    required this.initIndex,
    required this.tabBarList,
  });

  final int initIndex;

  final List<TabbarData> tabBarList;

  @override
  State<RootPageView> createState() => _RootPageViewState();
}

class _RootPageViewState extends State<RootPageView> {
  late int _tabBarIndex;
  late PageController _tabBarPageController;

  @override
  void initState() {
    _tabBarIndex = widget.initIndex;
    _tabBarPageController = PageController(initialPage: widget.initIndex);
    super.initState();
  }

  void setTabBarIndex(int index, {jump = false}) {
    setState(() {
      _tabBarIndex = index;
      if (jump) _tabBarPageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabBarIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setTabBarIndex(index, jump: true);
        },
        items:
            widget.tabBarList.map((TabbarData tabBar) => tabBar.item).toList(),
      ),
      // 主页内容
      body: PageView(
        controller: _tabBarPageController,
        physics: const PageScrollPhysics(),
        // physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setTabBarIndex(index);
        },
        children: widget.tabBarList
            .map((TabbarData tabBar) => KeepAliveWrapper(child: tabBar.page))
            .toList(),
      ),
    );
  }
}
