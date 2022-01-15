// ignore_for_file: sized_box_for_whitespace, avoid_print, override_on_non_overriding_member
import 'package:flutter/material.dart';

class ListGridExample extends StatefulWidget {
  const ListGridExample({Key? key}) : super(key: key);

  // @override
  // _ListGridExampleState get CreateState => _ListGridExampleState();

  @override
  State<StatefulWidget> get createState => _ListGridExampleState();
}

class _ListGridExampleState extends State<ListGridExample> {
  List<Widget> data = List.generate(100, (index) {
    return SimpleCard(index: index.toString());
  });

  ScrollController controller = ScrollController(initialScrollOffset: 0);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      print('Max Scroll Extent: ${controller.position.maxScrollExtent}');
      print(controller.offset.floor());
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView / GridView'),
      ),
      body: Column(children: <Widget>[
        Row(children: [
          const SizedBox(width: 12),
          ElevatedButton(
            child: const Text('AnimateTo'),
            onPressed: () {
              controller.animateTo(
                500,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
          ),
          const SizedBox(width: 12),
          ElevatedButton(
            child: const Text('JumpTo'),
            onPressed: () {
              controller.jumpTo(2000);
            },
          )
        ]),

        //List View
        // Expanded(
        //   child: ListView(
        //     controller: controller,
        //     children: data.map((item) => item).toList(),
        //   ),
        // ),

        //List view horizontal
        // Container(
        //   height: 200,
        //   child: ListView(
        //     controller: controller,
        //     scrollDirection: Axis.horizontal,
        //     children: <Widget>[
        //       ...data
        //           .map(
        //             (item) => Container(
        //               width: 100,
        //               child: item,
        //             ),
        //           )
        //           .toList(),
        //     ],
        //   ),
        // ),

        //List view Builder
        // Expanded(
        //   child: ListView.builder(
        //     controller: controller,
        //     itemCount: data.length,
        //     itemBuilder: (context, index) => data[index],
        //   ),
        // ),

        // List view Wheel
        // Expanded(
        //   child: ListWheelScrollView(
        //     controller: controller,
        //     itemExtent: 100.0,
        //     children: <Widget>[
        //       ...data.map((item) => item).toList(),
        //     ],
        //   ),
        // ),

        //List view Custom
        // Expanded(
        //   child: ListView.custom(
        //     childrenDelegate: SliverChildListDelegate(
        //       data.map((item) => item).toList(),
        //     ),
        //     controller: controller,
        //   ),
        // )

        //Grid View Count
        // Expanded(
        //   child: GridView.count(
        //     mainAxisSpacing: 10.0,
        //     crossAxisSpacing: 10.0,
        //     crossAxisCount: 2,
        //     childAspectRatio: 2,
        //     // scrollDirection: Axis.horizontal,
        //     // physics: BouncingScrollPhysics(),
        //     physics: ClampingScrollPhysics(),
        //     children: <Widget>[
        //       ...data.map((item) => item).toList(),
        //     ],
        //   ),
        // )

        //Grid Builder 1
        // Expanded(
        //   child: GridView.builder(
        //     gridDelegate:
        //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        //     itemCount: data.length,
        //     itemBuilder: (context, index) => data[index],
        //   ),
        // )

        //Grid Builder 2
        // SliverGridDelegateWithMaxCrossAxisExtent
        // Expanded(
        //   child: GridView.builder(
        //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //         maxCrossAxisExtent: 200),
        //     itemCount: data.length,
        //     itemBuilder: (context, index) => data[index],
        //   ),
        // ),

        // Expanded(
        //   child: GridView.extent(
        //     maxCrossAxisExtent: 200,
        //     shrinkWrap: true,
        //     children: [
        //       ...data.map((item) => item).toList(),
        //     ],
        //   ),
        // ),

        Expanded(
          child: GridView.custom(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              (context, index) {
                return data[index];
              },
              childCount: data.length,
            ),
          ),
        )
      ]),
    );
  }
}

class SimpleCard extends StatefulWidget {
  const SimpleCard({Key? key, required this.index}) : super(key: key);
  final String index;

  @override
  SimpleCardState get createState => SimpleCardState();
}

class SimpleCardState extends State<SimpleCard> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    print('init ${widget.index}');
  }

  @override
  void disponse() {
    super.dispose();
    print('disponse ${widget.index}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: ListTile(
          trailing: Icon(
            Icons.favorite,
            color: isFavorite ? Colors.red : Colors.black12,
          ),
          title: Text(widget.index),
          onTap: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
        ),
      ),
    );
  }
}
