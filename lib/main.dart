import 'package:flutter/material.dart';

double screenwidth;
String textAnjay;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.yellow,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'PENS DAY 1'),
    );
  }
}

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
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

    return Scaffold(
      appBar: AppBar(
        title: Text("PENS DAY 1"),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Today",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Center(
                                  child: Text(
                                    "07:00",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  "Go Jogging With Christine",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.purple[800],
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(child: Icon(Icons.access_alarms))
                            ]),
                      ),
                    ),
                  ),
                  elevation: 8.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Center(
                                  child: Text(
                                    "08:00",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  "Send Project File",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.purple[800],
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(child: Icon(Icons.access_alarms))
                            ]),
                      ),
                    ),
                  ),
                  elevation: 8.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Center(
                                  child: Text(
                                    "10:00",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  "Meeting With Client",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.purple[800],
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                  child: Icon(
                                Icons.access_alarms,
                                color: Colors.yellow[800],
                              ))
                            ]),
                      ),
                    ),
                  ),
                  elevation: 8.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Center(
                                  child: Text(
                                    "13:00",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  "Email Client",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.purple[800],
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(child: Icon(Icons.access_alarms))
                            ]),
                      ),
                    ),
                  ),
                  elevation: 8.0,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Tomorrow",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Center(
                                  child: Text(
                                    "07:00",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  "Morning Yoga",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.purple[800],
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(child: Icon(Icons.access_alarms))
                            ]),
                      ),
                    ),
                  ),
                  elevation: 8.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 100,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Center(
                                  child: Text(
                                    "08:00",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  "Send Project File",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.purple[800],
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(child: Icon(Icons.access_alarms))
                            ]),
                      ),
                    ),
                  ),
                  elevation: 8.0,
                ),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
