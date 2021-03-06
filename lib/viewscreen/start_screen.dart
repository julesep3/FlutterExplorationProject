import 'package:flutter/material.dart';
import 'package:scratch_project/model/item.dart';
import 'package:scratch_project/viewscreen/count.dart';
import 'package:scratch_project/viewscreen/itemlist_screen.dart';

class StartScreen extends StatefulWidget {
  static const routeName = '/startScreen';

  @override
  State<StatefulWidget> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  late _Controller con;
  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StartScreen'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: OutlinedButton(
                  onPressed: con.navigateToCount,
                  child: Text('Count Page'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: OutlinedButton(
                  onPressed: con.navigateToItemListScreen,
                  child: Text('Item List Page'),
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

class _Controller {
  late _StartScreenState state;
  _Controller(this.state);

  void navigateToCount() {
    Navigator.pushNamed(
      state.context,
      Count.routeName,
    );
  }

  void navigateToItemListScreen() {
    Navigator.pushNamed(
      state.context,
      ItemListScreen.routeName,
      // passing itemList from Item to ItemListScreen
      arguments: itemList,
    );
  }
}
