import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'hips8.dart';

class HandsSeven extends StatefulWidget {
  @override
  _HandsSevenState createState() => _HandsSevenState();
}

class _HandsSevenState extends State<HandsSeven> {
  String videoURL = "https://www.youtube.com/watch?v=0NJ6R93liY8";
  YoutubePlayerController _controller;


  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoURL),
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
    super.initState();
  }

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
                Text("การกายภาพท่าที่ 7", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold)),
                Text("กางนิ้วมือ"
                  ,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              ],
            ),
            height: 90,
            color: Colors.greenAccent,
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                  ),

                ],
              ),
            ),
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
                        builder: (context) => HipsEight()));
              },
            ),
          ),

        ],
      ),
    );
  }
}