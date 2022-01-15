import 'package:flutter/material.dart';

// ignore: prefer_function_declarations_over_variables
final fakeData = (int count, [bool showPrint = false]) =>
    List<Widget>.generate(count, (i) {
      if (showPrint) print(i);
      return Card(
        color: Colors.blue[100],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          title: Text('$i'),
        ),
      );
    });
