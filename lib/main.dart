import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playIt(int fileNumber) {
    final player = AudioCache();
    player.play('note$fileNumber.wav');
  }

  Expanded buildKey({Color colors, int playItNumber}) {
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () {
          playIt(playItNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Center(
              child: Text(
            'Farrrtty Xylophone',
            style: TextStyle(color: Colors.black),
          )),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(colors: Colors.red, playItNumber: 1),
            buildKey(colors: Colors.orange, playItNumber: 2),
            buildKey(colors: Colors.yellow, playItNumber: 3),
            buildKey(colors: Colors.green, playItNumber: 4),
            buildKey(colors: Colors.teal, playItNumber: 5),
            buildKey(colors: Colors.blue, playItNumber: 6),
            buildKey(colors: Colors.purple, playItNumber: 7),
          ],
        ),
      ),
    );
  }
}
