import 'package:flutter/material.dart';

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
            child: Center(
              child: Text('alireza'),
            )),
      ),
    ),
  );
}
