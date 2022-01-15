import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  StackExample({Key? key}) : super(key: key);

  @override
  _StackExampleState get createState => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Stack(
        children: <Widget>[
          Image.network(
              'https://i.pinimg.com/originals/52/1a/1e/521a1e88484a732ae324f8c9ae5ca758.jpg'),
          Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.orangeAccent,
            ),
          ),
          Positioned(
            right: 40,
            bottom: 40,
            child: Text(
              'Stack text',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
