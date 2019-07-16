import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePageState createState() => new _HomePageState();
}
final states = [
    'National Parks',
    'Alabama',
    'Alaska',
    'Arizona',
    'Arkansas',
    'California',
    'Colorado',
    'Connecticut',
    'Delaware',
    'Florida',
    'Georgia',
    'Hawaii',
    'Idaho',
    'Illinois',
    'Indiana',
    'Iowa',
    'Kansas',
    'Kentucky',
    'Louisiana',
    'Maine',
    'Maryland',
    'Massachusetts',
    'Michigan',
    'Minnesota',
    'Mississippi',
    'Missouri',
    'Montana',
    'Nebraska',
    'Nevada',
    'New Hampshire',
    'New Jersey',
    'New Mexico',
    'New York',
    'North Carolina',
    'North Dakota',
    'Ohio',
    'Oklahoma',
    'Oregon',
    'Pennsylvania',
    'Rhode Island',
    'South Carolina',
    'South Dakota',
    'Tennessee',
    'Texas',
    'Utah',
    'Vermont',
    'Virginia',
    'Washington',
    'West Virginia',
    'Wisconsin',
    'Wyoming',
];

  final searchresult = [];

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    // Scaffold generates the material content,
    // you pass in you design into body:
    return Scaffold(
      body: Container(
        // this part grabs size of device height and sets container to that height
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        //this create a scroll view, so when things go past height,
        // user can scroll down to see the rest
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 60.0, right: 60.0, top: 35.0, bottom: 30.0),
                child: Hero(
                  tag: 'hero',
                  child: Image.asset('assets/parkrangerlogo.JPG', fit: BoxFit.contain),
                //   child: CircleAvatar(
                //       backgroundColor: Colors.transparent,
                //       radius: 80.0,
                //       //backgroundImage: AssetImage('assets/parkrangerlogo.JPG')),
                ),
              ),
              // SizedBox(height: 48.0),
              Padding(
                padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 10.0),
                child: TextField(
                    // this lets you decorate the search box
                    decoration: InputDecoration(
                      hintText: 'Search',
                    ),
                    onChanged: search,
                    // this adds all text inputed into a string variable

                ),
              ),
              // Loads the search results
              searchresult.length == 0
                ? ListView.builder(
                    // shrinkWrap is important only when you put a listview, inside a scrollview
                    // you then want to set the physics of the listview to ScrollPhysics() so that
                    // it scrolls along with the scroll view, rather than seperate.
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: states.length,
                    itemBuilder: (context, index) {
                      // Builders need returns
                      return ListTile(
                        // leading: #add icon here
                        title: Center(
                          child: Text(states[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)), 
                        ),
                        onTap: () {
                          // enter functionality here
                        },
                      );
                    },
                  )
                : ListView.builder(
                    // shrinkWrap is important only when you put a listview, inside a scrollview
                    // you then want to set the physics of the listview to ScrollPhysics() so that
                    // it scrolls along with the scroll view, rather than seperate.
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: searchresult.length,
                    itemBuilder: (context, index) {
                      // Builders need returns
                      return ListTile(
                        // leading: #add icon here
                        title: Center(
                          child: Text(searchresult[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)), 
                        ),
                        onTap: () {
                          // enter functionality here
                        },
                      );
                    },
                  ),
              // ListView.builder(
              //   // shrinkWrap is important only when you put a listview, inside a scrollview
              //   // you then want to set the physics of the listview to ScrollPhysics() so that
              //   // it scrolls along with the scroll view, rather than seperate.
              //   shrinkWrap: true,
              //   physics: ScrollPhysics(),
              //   itemCount: states.length,
              //   itemBuilder: (context, index) {
              //     // Builders need returns
              //     return ListTile(
              //       // leading: #add icon here
              //       title: Center(
              //         child: Text(states[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)), 
              //       ),
              //       onTap: () {
              //         // enter functionality here
              //       },
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

void search(String searchText) {
  searchresult.clear(); //array
  for (int i = 0; i < states.length; i++) {
    String data = states[i];
    if(data.toLowerCase().contains(searchText.toLowerCase())) {
      searchresult.add(data);
    }
  }
}