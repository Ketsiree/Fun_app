import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funny_app/armss1.dart';
import 'package:video_player/video_player.dart';
import 'Chewie_list_item.dart';
import 'armss1.dart';

class arms1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(""),
                Text("การกายภาพท่าที่ 1",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("ยกแขนขึ้น-ลง"
                  ,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              ],
            ),
            height: 90,
            color: Colors.greenAccent,
          ),
          ChewieListItem(
            videoPlayerController:VideoPlayerController.asset(
              'assets/videos/arms1.mp4',
            ),
            looping:true,
          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(""),
                Text("ประเมินหลังจากการกายภาพ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            height: 75,
            color: Colors.lightGreenAccent,
          ),
          Container(
            child: Row(
              children: <Widget>[
                FloatingActionButton(
                heroTag: "btn1",
                onPressed: () => print("FloatingActionButton"),
                child:  Icon(Icons.thumb_up),
                backgroundColor: Colors.green,
            ),
                Text("    ดีมาก",style: TextStyle(fontWeight:FontWeight.bold, fontSize: 20),),
            ],
          ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn2",
                  onPressed: () => print("FloatingActionButton"),
                  child: Icon(Icons.thumbs_up_down),
                  backgroundColor: Colors.yellow,
                ),
                Text("    ปานกลาง",style: TextStyle(fontWeight:FontWeight.bold, fontSize: 20),),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                new FloatingActionButton(
                  heroTag: "btn3",
                  onPressed: () => print("FloatingActionButton"),
                  child: new Icon(Icons.thumb_down),
                  backgroundColor: Colors.red,
                ),
                Text("    แย่",style: TextStyle(fontWeight:FontWeight.bold, fontSize: 20),),
                Text(" "),
              ],
            ),
          ),
          Container(
            child: Column(
                  children: <Widget>[
                Text(" "),
                Text(" "),
                Text(" "),
                  ],
              ),
            ),
          Container(
              child: RaisedButton(
                child: Text("NEXT"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()));
                },
              ),
          ),
        ],
      ),
    );
  }
}




// class smile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: ()=>{},
//           child: Icon(Icons.thumb_up),
//           backgroundColor: Colors.pink,
//         ),
//       ),
//     );
//   }
// }

