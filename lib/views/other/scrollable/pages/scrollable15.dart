import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ScrollablePage15 extends StatefulWidget {
  const ScrollablePage15({Key? key}) : super(key: key);

  @override
  State<ScrollablePage15> createState() => _ScrollablePage15State();
}

class _ScrollablePage15State extends State<ScrollablePage15> {
  final List<GitEvent> _event = [];

  @override
  void initState() {
    _refresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub最新动态 - 实例'),
      ),
      body: _event.isEmpty
          ? const Center(
              child: Text('not data'),
            )
          : Scrollbar(
              child: RefreshIndicator(
                onRefresh: () async {
                  await _refresh();
                },
                child: ListView.builder(
                  itemCount: _event.length,
                  itemExtent: 56,
                  itemBuilder: (_, index) {
                    return Dismissible(
                      key: UniqueKey(),
                      onDismissed: (_) {
                        setState(() {
                          _event.removeAt(index);
                        });
                      },
                      confirmDismiss: (_) async {
                        return showDialog(
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                title: const Text('Are you sure ?'),
                                content: const Text(
                                    'Do you want to delete this item ?'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      return Navigator.of(context).pop(false);
                                    },
                                    child: const Text('cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      return Navigator.of(context).pop(true);
                                    },
                                    child: const Text(
                                      'delete',
                                      style: TextStyle(color: Colors.redAccent),
                                    ),
                                  ),
                                ],
                              );
                            });
                      },
                      child: ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          color: Colors.grey[200],
                          child: Image.network(
                            _event[index].avatarUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(_event[index].name),
                        subtitle: Text(_event[index].repoName),
                      ),
                    );
                  },
                ),
              ),
            ),
    );
  }

  _refresh() async {
    Response res = await Dio().get('https://api.github.com/events');
    if (res.statusCode == 200) {
      setState(() {
        _event.clear();
        _event.addAll(res.data.map<GitEvent>((e) => GitEvent(e)));
      });
    }
  }
}

class GitEvent {
  late String id;
  late String avatarUrl;
  late String name;
  late String repoName;

  GitEvent(data) {
    id = data['id'];
    avatarUrl = data['actor']['avatar_url'];
    name = data['actor']['login'];
    repoName = data['repo']['name'];
  }
}
