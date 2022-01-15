// ignore_for_file: sized_box_for_whitespace, override_on_non_overriding_member, avoid_print, prefer_const_constructors_in_immutables, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_module_6/example_list_grid.dart';

class KeepAliveExample extends StatefulWidget {
  KeepAliveExample({Key? key}) : super(key: key);

  @override
  _KeepAliveExampleState get createState => _KeepAliveExampleState();
}

class _KeepAliveExampleState extends State<KeepAliveExample> {
  List<Widget> data = List.generate(100, (index) {
    return SimpleCard(name: index.toString());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView KeepAlive')),
      body: ListView(
        children: <Widget>[
          ...data.map((item) => item).toList(),
        ],
      ),
    );
  }
}

class SimpleCard extends StatefulWidget {
  SimpleCard({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  SimpleCardState get createState => SimpleCardState();
}

class SimpleCardState extends State<SimpleCard>
    with AutomaticKeepAliveClientMixin {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    print('INIT');
  }

  @override
  void disponse() {
    super.dispose();
    print('DISPONSE');
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      width: double.infinity,
      child: Card(
        child: ListTile(
          trailing: Icon(
            Icons.favorite,
            color: isFavorite ? Colors.red : Colors.black12,
          ),
          title: Text(widget.name),
          onTap: () {
            setState(() {
              isFavorite = true;
            });
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
