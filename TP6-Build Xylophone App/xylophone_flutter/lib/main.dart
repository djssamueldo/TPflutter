import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:audiofileplayer/audiofileplayer.dart';
//import 'dart:typed_data';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioPlayer player = AudioPlayer();
  Future<void> playSound(int soundNumber) async {
    await player.play('assets/note$soundNumber.wav', isLocal: true);
    // Audio.load('note$soundNumber.wav').play();
    //.dispose();
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color, // background
          onPrimary: color, // foreground
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
