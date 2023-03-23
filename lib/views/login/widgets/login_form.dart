import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/http/apis/index.dart';
import 'package:go_router/go_router.dart';
import 'package:sp_util/sp_util.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey _fromKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _fromKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 用户名输入框
              UsernameTextFormField(usernameController: _usernameController),
              PasswordTextFormField(passwordController: _passwordController),
              SubmitButton(
                fromKey: _fromKey,
                usernameController: _usernameController,
                passwordController: _passwordController,
              ),
            ],
          ),
        ));
  }
}

class SubmitButton extends StatefulWidget {
  const SubmitButton({
    super.key,
    required GlobalKey<State<StatefulWidget>> fromKey,
    required this.usernameController,
    required this.passwordController,
  }) : _fromKey = fromKey;

  final GlobalKey<State<StatefulWidget>> _fromKey;

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton>
    with SingleTickerProviderStateMixin {
  late final FormState _fromKey = (widget._fromKey.currentState as FormState);
  bool _loading = false;

  late AnimationController _container;

  @override
  void initState() {
    _container = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    super.initState();
  }

  void login() async {
    try {
      setState(() {
        _loading = true;
      });
      _container.forward();
      final res = await LoginApi.login({
        'phone': widget.usernameController.text,
        'password': widget.passwordController.text
      });
      if (res == null) return;
      SpUtil.putString('token', res.data['token']);
      goIndexPage();
    } catch (e) {
      //
    } finally {
      setState(() {
        _loading = false;
      });
      _container.reverse();
    }
  }

  void goIndexPage() {
    GoRouter.of(context).go('/index');
  }

  void _onSubmitLoginForm() async {
    if (_fromKey.validate()) {
      setState(() {
        login();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(36),
      ),
      child: InkWell(
        onTap: _onSubmitLoginForm,
        borderRadius: BorderRadius.circular(36),
        child: AnimatedBuilder(
            animation: _container,
            builder: (context, child) {
              return Container(
                width: Tween(begin: 500.0, end: 52.0)
                    .chain(CurveTween(
                      curve: Curves.easeIn,
                    ))
                    .evaluate(_container),
                height: 52,
                alignment: Alignment.center,
                child: !_loading
                    ? const Text(
                        '登录',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          letterSpacing: 8,
                        ),
                      )
                    : const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2.2,
                        ),
                      ),
              );
            }),
      ),
    );
  }
}

class UsernameTextFormField extends StatefulWidget {
  const UsernameTextFormField({
    super.key,
    required TextEditingController usernameController,
  }) : _usernameController = usernameController;

  final TextEditingController _usernameController;

  @override
  State<UsernameTextFormField> createState() => _UsernameTextFormFieldState();
}

class _UsernameTextFormFieldState extends State<UsernameTextFormField> {
  @override
  void initState() {
    widget._usernameController.text = '19100000001';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: widget._usernameController,
        validator: (v) {
          if (v == null || v.isEmpty) return "用户名不能为空";
          if (v.length < 6) return "用户名长度至少为6位";
          return null;
        },
        inputFormatters: [
          LengthLimitingTextInputFormatter(11), //限制输入长度不超过8位
          FilteringTextInputFormatter.digitsOnly, //限制只允许输入数字
        ],
        // maxLength: 11,
        decoration: InputDecoration(
          hintText: '用户名或手机号',
          prefixIcon: const Icon(Icons.person),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(2),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          // isCollapsed: true,
          // border: InputBorder.none,
          // border: UnderlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          // ),
        ),
      ),
    );
  }
}

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({
    super.key,
    required TextEditingController passwordController,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool _openEye = false;

  @override
  void initState() {
    widget._passwordController.text = '666888';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 80),
      child: TextFormField(
        controller: widget._passwordController,
        obscureText: !_openEye, //密码隐藏
        validator: (v) {
          if (v == null || v.isEmpty) return "密码不能为空";
          if (v.length < 6) return "密码长度至少为6位";
          if (v.length > 20) return "密码长度至多为20位";
          return null;
        },
        inputFormatters: [
          LengthLimitingTextInputFormatter(12),
          FilteringTextInputFormatter(
            RegExp("[a-z,A-Z,0-9]"),
            allow: true,
          ),
        ],
        decoration: InputDecoration(
          hintText: '密码',
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _openEye = !_openEye;
              });
            },
            child: Icon(
              _openEye ? Icons.visibility : Icons.visibility_off,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(2),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
