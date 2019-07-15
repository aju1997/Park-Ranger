import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class _HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  @override
  Widget build(BuildContext context) {
    
  }
}

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
  //   final alucard = Hero(
  //     tag: 'hero',
  //     child: Padding(
  //       padding: EdgeInsets.all(16.0),
  //       child: CircleAvatar(
  //         radius: 72.0,
  //         backgroundColor: Colors.transparent,
  //         backgroundImage: AssetImage('assets/nps.png'),
  //       ),
  //     ),
  //   );

  //   final welcome = Padding(
  //     padding: EdgeInsets.all(8.0),
  //     child: Text(
  //       'Welcome Alucard',
  //       style: TextStyle(fontSize: 28.0, color: Colors.white),
  //     ),
  //   );

  //   final lorem = Padding(
  //     padding: EdgeInsets.all(8.0),
  //     child: Text(
  //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
  //       style: TextStyle(fontSize: 16.0, color: Colors.white),
  //     ),
  //   );

  //   final body = Container(
  //     width: MediaQuery.of(context).size.width,
  //     padding: EdgeInsets.all(28.0),
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(colors: [
  //         Colors.blue,
  //         Colors.lightBlueAccent,
  //       ]),
  //     ),
  //     child: Column(
  //       children: <Widget>[alucard, welcome, lorem],
  //     ),
  //   );

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green[400],
      centerTitle: true,
      title: Text('Park Ranger')
    ),
    // body: body
  );
  }
}