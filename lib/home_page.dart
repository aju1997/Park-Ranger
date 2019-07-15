import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final states = ['National Park', 'California', 'Oregon', 'Washington', 'Nevada', 'Florida', 'Wyoming', 'Colorado', 'Montana'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Park Ranger'),
          centerTitle: true,
          backgroundColor: Colors.green[800],
          ),
        body: 
          ListView.separated(
            padding: const EdgeInsets.all(8.0),
            itemCount: states.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 70,
                color: Colors.lightGreen,
                child: Center(child: Text(states[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   static String tag = 'home-page';

//   @override
//   Widget build(BuildContext context) {
//   //   final alucard = Hero(
//   //     tag: 'hero',
//   //     child: Padding(
//   //       padding: EdgeInsets.all(16.0),
//   //       child: CircleAvatar(
//   //         radius: 72.0,
//   //         backgroundColor: Colors.transparent,
//   //         backgroundImage: AssetImage('assets/nps.png'),
//   //       ),
//   //     ),
//   //   );

//   //   final welcome = Padding(
//   //     padding: EdgeInsets.all(8.0),
//   //     child: Text(
//   //       'Welcome Alucard',
//   //       style: TextStyle(fontSize: 28.0, color: Colors.white),
//   //     ),
//   //   );

//   //   final lorem = Padding(
//   //     padding: EdgeInsets.all(8.0),
//   //     child: Text(
//   //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
//   //       style: TextStyle(fontSize: 16.0, color: Colors.white),
//   //     ),
//   //   );

//   //   final body = Container(
//   //     width: MediaQuery.of(context).size.width,
//   //     padding: EdgeInsets.all(28.0),
//   //     decoration: BoxDecoration(
//   //       gradient: LinearGradient(colors: [
//   //         Colors.blue,
//   //         Colors.lightBlueAccent,
//   //       ]),
//   //     ),
//   //     child: Column(
//   //       children: <Widget>[alucard, welcome, lorem],
//   //     ),
//   //   );

//   return Scaffold(
//     appBar: AppBar(
//       backgroundColor: Colors.green[400],
//       centerTitle: true,
//       title: Text('Park Ranger')
//     ),
//     // body: body
//   );
//   }
// }