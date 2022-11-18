import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return getApplication();
  }
}

Widget getApplication() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            image: DecorationImage(
              image: AssetImage('images/drum.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: getBoxDrumEffect(),
        ),
      ),
    ),
  );
}

Widget getBoxDrumEffect() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    var player = AudioCache();
                    player.play('h1.wav');
                  },
                  child: Text('')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    var player = AudioCache();
                    player.play('h2.wav');
                  },
                  child: Text('')),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    var player = AudioCache();
                    player.play('c1.wav');
                  },
                  child: Text('')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    var player = AudioCache();
                    player.play('c2.wav');
                  },
                  child: Text('')),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    var player = AudioCache();
                    player.play('k1.wav');
                  },
                  child: Text('')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    var player = AudioCache();
                    player.play('k2.wav');
                  },
                  child: Text('')),
            ),
          ],
        ),
      ),
    ],
  );
}


