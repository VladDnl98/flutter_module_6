import 'package:flutter/material.dart';

class IntrinsicExample extends StatefulWidget {
  const IntrinsicExample({Key? key}) : super(key: key);

  @override
  _IntrinsicExampleState get createState => _IntrinsicExampleState();
}

class _IntrinsicExampleState extends State<IntrinsicExample> {
  List<Widget> data = List.generate(20, (index) {
    return Card(
      color: Colors.green[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              index.toString(),
            ),
          ),
        ],
      ),
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intrintsic'),
      ),
      body: SingleChildScrollView(
        child: Align(
          child: Column(
            children: <Widget>[
              ElevatedButton(onPressed: () {}, child: const Text('Hi')),
              ElevatedButton(onPressed: () {}, child: const Text('My')),
              ElevatedButton(onPressed: () {}, child: const Text('Name')),
              const Divider(),
              IntrinsicButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

class IntrinsicButtons extends StatelessWidget {
  IntrinsicButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(onPressed: () {}, child: const Text('Hi')),
          ElevatedButton(onPressed: () {}, child: const Text('My')),
          ElevatedButton(onPressed: () {}, child: const Text('Name')),
        ],
      ),
    );
  }
}
