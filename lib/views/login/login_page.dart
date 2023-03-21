import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 60),
              child: FlutterLogo(
                size: 100,
              ),
            ),
            const Expanded(
              child: Center(
                child: LoginForm(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Copyright'),
                  SizedBox(width: 4),
                  Icon(
                    Icons.copyright,
                    weight: 200,
                  ),
                  SizedBox(width: 4),
                  Text('2022 聚简科技'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
