import 'package:flutter/material.dart';
import 'package:flutter_module_6/utils.dart';

class SingleChildScrollViewExample extends StatefulWidget {
  SingleChildScrollViewExample({Key? key}) : super(key: key);

  @override
  _SingleChildScrollViewExampleState get createState =>
      _SingleChildScrollViewExampleState();
}

class _SingleChildScrollViewExampleState
    extends State<SingleChildScrollViewExample> {
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      // ignore: avoid_print
      print(controller.offset.round());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SingleScrollView')),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Text('Я заебался пиздец как, хочу в отпуск'),
            for (final item in fakeData(1, true)) item,
            Text('Я заебался пиздец как, хочу в отпуск')
          ],
        ),
      ),
    );
  }
}
