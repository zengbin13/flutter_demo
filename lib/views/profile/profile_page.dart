import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/discover_cell.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f3f3),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            DiscoverCell(
              title: '其他',
              onTap: () {
                context.push('/other');
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('退出登录'),
            ),
          ],
        )),
      ),
    );
  }
}
