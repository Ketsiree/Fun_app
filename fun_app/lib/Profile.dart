import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'arms1.dart';

// import 'Home.dart';
// import 'Arms.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Warning"),
      ),
      body: Container(
        color: Colors.cyanAccent,
        padding: EdgeInsets.all(20), //เว้นระยะจากขอบ
        margin: EdgeInsets.all(20),
        alignment: AlignmentDirectional.bottomCenter,
        child: Column(
          //คอลัมอันนี้เป็นคอลัมใหญ่นะ
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              padding: EdgeInsets.all(30),
              color: Colors.yellowAccent,
              child: Text("ข้อควรรู้",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(""),
                  Text(""),
                  Text(""),
                  Text(""),
                  Text(
                      "1.การทำกายภาพทั้ง 12 ท่า เป็นท่ากายภาพมาตรฐานที่สามารถทำได้ทุกเพศทุกวัย"),
                  Text(""),
                  Text(
                      "2.เมื่อเริ่มทำการกายภาพให้กับคนไข้ติดเตียงหรือผู้สูงอายุให้ดูเป็นระยะๆ ว่าคนไข้มีอาการเหนื่อยหรือไม่ หากมีให้คนไข้พัก 15-30 วินาที"),
                  Text(""),
                  Text(
                      "3.หากคนไข้หรือผู้สูงอายุมีแรงมากพอให้ทำการปฏิบัติด้วยตนเอง เพื่อเป็นการฝึกออกแรง หากไม่ไหว ห้ามฝืน แล้วให้ผู้ดูแลเข้าไปช่วยเหลือ"),
                  Text(""),
                  Text("", style: TextStyle(fontSize: 14)),
                ],
              ),
              height: 300,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    color: Colors.yellowAccent,
                    child: Text("",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Container(
                      child: RaisedButton(
                    child: Text("NEXT"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ArmsOne()));
                    },
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
