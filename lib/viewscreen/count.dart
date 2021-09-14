import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  static const routeName = '/count';
  @override
  State<StatefulWidget> createState() {
    return _CountState();
  }
}

class _CountState extends State<Count> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Menu'),
      ),
      body: Text('count page'),
    );
  }
}
