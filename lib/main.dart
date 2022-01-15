// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_module_6/single_child_scroll_view_example.dart';
import 'package:flutter_module_6/example_list_grid.dart';
import 'package:flutter_module_6/keep_alive_example.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      home: KeepAliveExample(),
    );
  }
}
