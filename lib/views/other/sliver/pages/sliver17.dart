import 'package:flutter/material.dart';

class SliverPage17 extends StatefulWidget {
  const SliverPage17({Key? key}) : super(key: key);

  @override
  State<SliverPage17> createState() => _SliverPage17State();
}

class _SliverPage17State extends State<SliverPage17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverPage17'),
      ),
      body: const Center(child: Text('SliverPage17')),
    );
  }
}
