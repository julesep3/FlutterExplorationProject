import 'package:flutter/material.dart';
import 'package:scratch_project/viewscreen/count.dart';
import 'package:scratch_project/viewscreen/start_screen.dart';

void main() {
  runApp(Explore());
}

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (BuildContext context) => StartScreen(),
        Count.routeName: (context) => Count(),
      },
    );
  }
}
