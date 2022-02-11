import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void play(int num) {
      final player = AudioCache();
      player.play('note$num.wav');
    }

    Expanded key({int value, Color color} ){
      return Expanded(
        child: FlatButton(
          color: color ,
          onPressed: () {
            play(value);
          },
        ),
      );
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              key(value: 1, color: Colors.lightBlue),
              key(value: 2 , color: Colors.red) ,
              key(value: 3 , color: Colors.yellowAccent),
              key(value: 4 , color: Colors.indigoAccent),
              key(value: 5 , color: Colors.purple),
              key(value: 6 , color: Colors.pink),
              key(value: 7 , color: Colors.green),

            ],
          ),
        ),
      ),
    );
  }
}
