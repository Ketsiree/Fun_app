import 'package:flutter/material.dart';
import 'LoginPage.dart';


void main()
{
  runApp(MyApp());

}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Help Bedridden',
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
    );
  }
}

class MyStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _MyStatefulState();
  }

}

class _MyStatefulState extends State<MyStateful> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bedridden"),
      ),
      body: new Text("This is body"),
    );
  }
}

