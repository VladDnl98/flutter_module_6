import 'package:flutter/material.dart';

class AspectExample extends StatefulWidget {
  AspectExample({Key? key}) : super(key: key);

  @override
  _AspectExampleState get createState => _AspectExampleState();
}

class _AspectExampleState extends State<AspectExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
