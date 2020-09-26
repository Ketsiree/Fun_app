import 'package:flutter/material.dart';
import 'package:funny_app/Profile.dart';
import 'Profile.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HOME',
      home: Scaffold(
        appBar: AppBar(
          title: Text('HOME'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                  Text(""),
                  Text("WELCOME",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                  ],
              ),
                height: 90,
                color: Colors.orange,
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(""),
                    Text(""),
                    Image.asset('assets/images/physical1.jpg', width: 100,),
                    Text(""),
                    Text("Help",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("Bedridden",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(""),
                  ],
                ),
                height: 200,
                color: Colors.amberAccent,
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(""),
                    Text("        แอปพลิเคชันนี้จะช่วยในการทำกายภาพแนะนำการทำท่าทางกายภาพต่างๆ ให้แก่ผู้ป่วยรวมทั้งอุปกรณ์จะมีเซ็นเซอร์ที่ใช้ในการนับจำนวนครั้งในการทำแต่ละท่า "
                        "   มีการนำเอาเทคโนโลยีอินเทอร์เน็ตแห่งสรรพสิ่งมาประยุกต์ใช้เพื่อเพิ่มความสะดวกให้กับผู้ดูแลและมีการแสดงผลออกทางหน้าจอ ผู้ป่วยจึงสามารถกายภาพตามท่ากายภาพต่าง ๆ"
                        "   ด้วยตนเองได้ ทำให้การกายภาพผู้ป่วยติดเตียงเป็นไปด้วยความสะดวกมากขึ้น",style: TextStyle(fontSize: 14)),
                    Text(""),
                  ],
                ),
                height: 170,
                color: Colors.lightBlueAccent,
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(""),
                    Image.asset('assets/images/ss.png', width: 335,),
                  ],
                ),
                height: 150,
                color: Colors.blue,
              ),
              Container(
                  child: RaisedButton(
                    child: Text("NEXT"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => profile()));
                    },
                  )
              ),
        ],
      ),
    ),
      ),
    );
  }
}
