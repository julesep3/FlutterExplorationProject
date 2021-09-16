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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              for (var item in widget.items)
                Card(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.blueGrey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Item name: ${item.name}'),
                        Text('Item color: ${item.color}'),
                        Text('Item price: \$${item.price}'),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
