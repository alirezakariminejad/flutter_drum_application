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
                    playSound('h1.wav');
                  },
                  child: Text('')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound('h2.wav');
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
                    playSound('c1.wav');
                  },
                  child: Text('')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound('c2.wav');
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
                    playSound('k1.wav');
                  },
                  child: Text('')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound('k2.wav');
                  },
                  child: Text('')),
            ),
          ],
        ),
      ),
    ],
  );
}

playSound(String soundName) {
  var player = AudioCache();
  player.play(soundName);
}
