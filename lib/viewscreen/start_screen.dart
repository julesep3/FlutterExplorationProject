import 'package:flutter/material.dart';
import 'package:scratch_project/viewscreen/count.dart';

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
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Controller {
  late _StartScreenState state;
  _Controller(this.state);

  void navigateToCount() {
    Navigator.pushNamed(state.context, Count.routeName);
  }
}
