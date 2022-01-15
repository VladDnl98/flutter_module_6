import 'package:flutter/material.dart';
import 'package:flutter_module_6/utils.dart';

final _data = fakeData(100);

class LayoutBilderExample extends StatefulWidget {
  LayoutBilderExample({Key? key}) : super(key: key);

  @override
  _LayoutBilderExampleSate get createState => _LayoutBilderExampleSate();
}

class _LayoutBilderExampleSate extends State<LayoutBilderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
      ),
      body: Column(
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(labelText: 'Search'),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double _width = constraints.constrainWidth();
                return _width > 600
                    ? GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: _width > 600 ? 3 : 2,
                          childAspectRatio: _width > 600 ? 2 : 1,
                        ),
                        itemCount: _data.length,
                        itemBuilder: (context, index) => _data[index],
                      )
                    : ListView.builder(
                        itemCount: _data.length,
                        itemBuilder: (context, index) => _data[index],
                      );
              },
            ),
          )
        ],
      ),
    );
  }
}
