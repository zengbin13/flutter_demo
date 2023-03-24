import 'package:flutter/material.dart';

class SliverPage16 extends StatefulWidget {
  const SliverPage16({Key? key}) : super(key: key);

  @override
  State<SliverPage16> createState() => _SliverPage16State();
}

class _SliverPage16State extends State<SliverPage16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverPage16'),
      ),
      body: const Center(child: Text('SliverPage16')),
    );
  }
}
