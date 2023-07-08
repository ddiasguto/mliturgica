import 'package:flutter/material.dart';

class MusicTitle extends StatelessWidget {
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }

  const MusicTitle({required this.title});
}

class Music extends StatelessWidget {
  final String cipher;
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        cipher.toUpperCase(),
        softWrap: true,
      ),
    );
  }

  const Music({required this.cipher});
}

Widget Mus = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

class Cifra extends StatelessWidget {
  final String cipher;
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      cipher,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 8,
        color: Color.fromARGB(255, 240, 9, 9),
      ),
    );
  }

  const Cifra({required this.cipher});
}
