import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num){
    int dj=num;
    final player = AudioCache();
    player.play('note$dj.wav');
  }
  Expanded expandWidget({Color color, int num}){
   return Expanded(

      child: FlatButton(
                  color: color,
          onPressed: (){
           playSound(num);
          },
          child:Text('click me')
      ),
        );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              expandWidget( color: Colors.orange[200], num:1),
              expandWidget(color: Colors.red, num:2),
              expandWidget(color: Colors.blue, num:3),
              expandWidget(color: Colors.grey, num:4),
              expandWidget(color: Colors.lightBlue, num:5),
              expandWidget(color: Colors.teal, num:6),
              expandWidget(color: Colors.purple, num:7),




            ],
          ),
        ),
      ),
    );
  }
}
