import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Menu'),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Image.asset(
              'images/profile2.jpg',
            ),
            currentAccountPictureSize: Size(70.0, 70.0),
            accountName: Text('julesep3'),
            accountEmail: Text('julian@deerpeople.com'),
          )
        ],
      )),
      backgroundColor: Colors.blueGrey[60],
      body: Text('I am the body of the app.'),
    );
  }
}
