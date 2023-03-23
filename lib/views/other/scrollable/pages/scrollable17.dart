import 'package:flutter/material.dart';

class ScrollablePage17 extends StatefulWidget {
  const ScrollablePage17({Key? key}) : super(key: key);

  @override
  State<ScrollablePage17> createState() => _ScrollablePage17State();
}

class _ScrollablePage17State extends State<ScrollablePage17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('趁热打铁再来4个widget'),
        ),
        body: PageView(
          children: [
            ListWheelScrollView(
              itemExtent: 50,
              // diameterRatio: 2.0,
              // offAxisFraction: -1.5,
              useMagnifier: true,
              magnification: 2,
              children: List.generate(
                20,
                (index) => Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text('$index'),
                ),
              ),
            ),
            ReorderableListView(
              children: List.generate(
                  10,
                  (index) => Container(
                        key: UniqueKey(),
                        alignment: Alignment.center,
                        height: 50,
                        color: Colors.amberAccent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.accessible_forward_rounded),
                            Text('$index'),
                          ],
                        ),
                      )),
              onReorder: (int oldIndex, int newIndex) {
                print('$oldIndex $newIndex');
              },
            ),
            SingleChildScrollView(
              child: Column(
                children: const [
                  FlutterLogo(
                    size: 200,
                  ),
                  Placeholder(
                    fallbackHeight: 300,
                  ),
                  FlutterLogo(
                    size: 200,
                  ),
                  Placeholder(),
                ],
              ),
            )
          ],
        ));
  }
}
