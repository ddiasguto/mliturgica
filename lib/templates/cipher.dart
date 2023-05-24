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
    return Center(
      child: Column(
        children: [
          Text(
            cipher.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(''),
        ],
      ),
    );
  }

  const Music({required this.cipher});
}

class Cifra extends StatelessWidget {
  final String cipher;
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(''),
        Text(
          cipher,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Color.fromARGB(255, 240, 9, 9),
          ),
        ),
      ],
    ));
  }

  const Cifra({required this.cipher});
}
