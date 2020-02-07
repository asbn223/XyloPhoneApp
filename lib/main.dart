import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xlyophone());

class Xlyophone extends StatelessWidget {
  Widget buildKey({Color color, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        onPressed: () {
          final player = AudioCache();
          player.play("note$noteNumber.wav");
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Xlyophone",
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildKey(color: Colors.red, noteNumber: 1),
              buildKey(color: Colors.yellow, noteNumber: 2),
              buildKey(color: Colors.blue, noteNumber: 3),
              buildKey(color: Colors.grey, noteNumber: 4),
              buildKey(color: Colors.purple, noteNumber: 5),
              buildKey(color: Colors.teal, noteNumber: 6),
              buildKey(color: Colors.white, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
