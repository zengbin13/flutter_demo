// 1.创建模型
// 2.使用MultiProvider
// 3.使用共享数据

import 'package:flutter/material.dart';

//ChangeNotifier 用于向监听器发送通知 可订阅其状态变化
class UserModel extends ChangeNotifier {
  // tabBar选中索引
  final int _tabBarIndex = 0;
  int get getTabBarIndex => _tabBarIndex;
}
