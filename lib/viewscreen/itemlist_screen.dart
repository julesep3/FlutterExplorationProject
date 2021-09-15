import 'package:flutter/material.dart';
import 'package:scratch_project/model/item.dart';

class ItemListScreen extends StatefulWidget {
  static const routeName = '/itemListScreen';

  // list of items to be received
  final List<Item> items;
  ItemListScreen(this.items);
  @override
  State<StatefulWidget> createState() {
    return _ItemListState();
  }
}

class _ItemListState extends State<ItemListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item App bar'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('Item 1 name: ${widget.items[0].name} *** '),
              Text('Item 1 color: ${widget.items[0].color} *** '),
              Text('Item 1 price: ${widget.items[0].price} *** '),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
