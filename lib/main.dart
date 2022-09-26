import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey(int num, {Color color}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(num);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, color: Colors.red),
              buildKey(2, color: Colors.orange),
              buildKey(3, color: Colors.yellow),
              buildKey(4, color: Colors.green),
              buildKey(5, color: Colors.teal),
              buildKey(6, color: Colors.blue),
              buildKey(7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
