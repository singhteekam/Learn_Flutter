import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  int increment(int value) {
    // value= counter = 1
    value = value + 1; // value= 1+1=2
    print(value);
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("My AppBar"),
        backgroundColor: Colors.green,
      ),


      //To insert an asset image in our application
      body: Center(
        child: Image.asset('assets/signimage.jpeg', width: 300, height: 300),
      ),




      // Introduction to Column widget

      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Text('Text 1', textScaleFactor: 2),
      //     Text('Text 2', textScaleFactor: 2),
      //     Text('Text 3', textScaleFactor: 2),
      //   ],
      // ),







      // INTRODUCTION TO ROW WIDGET

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     Text('Text 1', textScaleFactor: 2),
      //     Text('Text 2', textScaleFactor: 2),
      //     Text('Text 3', textScaleFactor: 2),
      //   ],
      // ),

    
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // counter = increment(counter); // counter= 2
            counter++;
            setState(() {});
          },
          child: Icon(
            Icons.add,
            size: 40,
          )),
    );
  }
}

//Counter App
