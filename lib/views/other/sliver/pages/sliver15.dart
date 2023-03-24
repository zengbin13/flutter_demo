import 'package:flutter/material.dart';

class SliverPage15 extends StatefulWidget {
  const SliverPage15({Key? key}) : super(key: key);

  @override
  State<SliverPage15> createState() => _SliverPage15State();
}

class _SliverPage15State extends State<SliverPage15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverPage15'),
      ),
      body: const Center(child: Text('SliverPage15')),
    );
  }
}
