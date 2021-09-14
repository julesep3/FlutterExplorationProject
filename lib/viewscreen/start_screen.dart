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
                  onPressed: () =>
                      Navigator.pushNamed(context, Count.routeName),
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
