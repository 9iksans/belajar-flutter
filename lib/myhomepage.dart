import 'dart:math';

import 'package:first_app/service/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'model/team.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var teams = List<Team>();
  var isLoading = false;
  var isStart = false;

  void _fetchTeam() async {
    setState(() {
      isStart = true;
      isLoading = true;
    });

    var tempTeams = await Api().getTeams();

    setState(() {
      teams = tempTeams;
      isLoading = false;
    });
  }

  var colors = [
    Colors.red,
    Colors.blue,
    Colors.greenAccent,
    Colors.yellow,
    Colors.orange
  ];

  Color _getColor() {
    var random = Random().nextInt(colors.length - 1);
    return colors[random];
  }

  Widget _loadingSession() {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: _getMoreList(),
        ),
      ),
    );
  }

  List<Widget> _getMoreList() {
    var items = List<Widget>();
    for (var i = 0; i < teams.length; i++) {
      items.add(_checkList(teams[i].teamName, _getColor(), teams[i].teamBadge));
    }
    return items;
  }

  Widget _checkList(String title, var warna, String badge) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        width: MediaQuery.of(context).size.width * 100,
        height: 60,
        child: Container(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 5,
                  color: warna,
                ),
                Container(
                  child: Center(
                    child: Image.network(
                      badge,
                      height: 40,
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.purple[800],
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  child: Icon(Icons.access_alarms),
                  margin: EdgeInsets.only(right: 10),
                )
              ]),
        ),
      ),
      elevation: 8.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TextField anjay = TextField(
    //   onChanged: (String val) {
    //     setState(() {
    //       textAnjay = val;
    //       print(textAnjay);
    //     });
    //   },
    // );

    //   Container(
    //     width: double.infinity,
    //     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    //     child: Text(
    //       "Tomorrow",
    //       style: TextStyle(color: Colors.grey[800]),
    //     ),
    //   ),

    return Scaffold(
      appBar: AppBar(
        title: Text("PENS DAY 2"),
      ),

      body: Center(
        child: !isStart
            ? Text("Push Refresh Button")
            : !isLoading
                ? _loadingSession()
                : Center(
                    child: SpinKitChasingDots(
                      color: Colors.blue,
                      size: 50,
                    ),
                  ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _fetchTeam,
        tooltip: 'Increment',
        child: Icon(Icons.autorenew),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
