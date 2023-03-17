import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/provider/index.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sp_util/sp_util.dart';
import 'router/index.dart';

void main() async {
  ///WidgetFlutterBinding 用于与Flutter引擎进行交互
  ///异步完成 - 必须调用 ensureInitialized(), 以确保具有 WidgetsBinding 的实例
  WidgetsFlutterBinding.ensureInitialized();

  //初始化本地存储
  await SpUtil.getInstance();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<UserModel>(create: (_) => UserModel()),
    ],
    child: const MyApp(),
  ));

  // 透明状态栏
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: '简猪宝',
          theme: ThemeData(
            // colorSchemeSeed: const Color.fromARGB(255, 93, 152, 255),
            useMaterial3: true,
          ),
          showPerformanceOverlay: false,
          builder: EasyLoading.init(),
          routerConfig: RouterUtil.router,
        );
      },
    );
  }
}
