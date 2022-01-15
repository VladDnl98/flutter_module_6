// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  PageViewExample({Key? key}) : super(key: key);

  @override
  _PageViewExampleState get createState => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  PageController _pageController = PageController(
    viewportFraction: 1,
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page view'),
      ),
      body: PageView(
        controller: _pageController,
        //  scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          print('index');
        },
        children: <Widget>[
          Container(
            color: Colors.deepOrange[100],
            child: const Center(
              child: Text('Page number 1'),
            ),
          ),
          Container(
            color: Colors.cyan[100],
            child: const Center(
              child: Text('Page number 2'),
            ),
          ),
          Container(
            color: Colors.purple[100],
            child: const Center(
              child: Text('Page number 3'),
            ),
          ),
          Container(
            color: Colors.green[100],
            child: const Center(
              child: Text('Page number 4'),
            ),
          ),
        ],
      ),
    );
  }
}
