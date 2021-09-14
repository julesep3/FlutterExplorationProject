import 'package:flutter/material.dart';

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
      body: Text('Body of the start screen'),
    );
  }
}
