// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module_6/utils.dart';

class CustomScrollViewExamplae extends StatefulWidget {
  CustomScrollViewExamplae({Key? key}) : super(key: key);

  @override
  _CustomScrollViewExampleState get createState =>
      _CustomScrollViewExampleState();
}

class _CustomScrollViewExampleState extends State<CustomScrollViewExamplae> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Custom Scroll'),
        // ),
        body: CustomScrollView(
          slivers: [
            // ignore: todo
            // TODO: Sliver List
            // SliverList(
            //   delegate: SliverChildListDelegate(
            //     [
            //       for (var item in fakeData(20)) item,
            //     ],
            //   ),
            // ),

            // ignore: todo
            // TODO: SliverGrid
            // SliverGrid.count(
            //   crossAxisCount: 2,
            //   children: [
            //     for (var item in fakeData(20)) item,
            //   ],
            // ),
            // SliverGrid.extent(
            //   maxCrossAxisExtent: 300,
            //   children: [
            //     for (var item in fakeData(20)) item,
            //   ],
            // ),

            // ignore: todo
            // TODO: CupertinoSliverNavigationBar
            // CupertinoSliverNavigationBar(
            //   largeTitle: Text('Sliver navigation bar'),
            // ),
            // // SliverGrid.count(
            // //   crossAxisCount: 2,
            // //   children: [
            // //     for (var item in fakeData(10)) item,
            // //   ],
            // // ),
            // SliverList(
            //     delegate: SliverChildListDelegate([
            //   for (var item in fakeData(20)) item,
            // ],
            // ),
            // )

            // ignore: todo
            // TODO: SliverAppBar
            SliverAppBar(
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Colapsing Toolbar",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                background: Image.network(
                  "https://i.pinimg.com/originals/52/1a/1e/521a1e88484a732ae324f8c9ae5ca758.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // SliverGrid.count(
            //   crossAxisCount: 2,
            //   children: [
            //     for (var item in fakeData(10)) item,
            //   ],
            // )

            // TODO: SliverToBoxAdapter
            // SliverFillRemaining(
            //   child: Text('Flutter is good'),
            // )

            // SliverFillRemaining(
            //   child: Container(
            //     color: Colors.red,
            //     child: Center(
            //       child: Text('Text'),
            //     ),
            //   ),
            // )

            SliverLayoutBuilder(builder: (context, constraints) {
              return SliverToBoxAdapter(
                  child: Column(children: [
                Text('Test'),
                Text('${constraints.viewportMainAxisExtent}'),
                Text('${constraints.crossAxisExtent}')
              ]));
            })
          ],
        ),
      ),
    );
  }
}
