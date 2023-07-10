import 'package:diasguto/models/colors.dart';
import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  final String cipher;
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22,
        right: 10,
      ),
      child: Text(
        cipher.toUpperCase(),
        softWrap: true,
      ),
    );
  }

  const Music({required this.cipher});
}

class Refrao extends StatelessWidget {
  final String cipher;
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22, right: 10),
      child: Text(
        cipher.toUpperCase(),
        softWrap: true,
        style: TextStyle(color: redApp, fontStyle: FontStyle.italic),
      ),
    );
  }

  const Refrao({required this.cipher});
}

Widget verse() {
  return Container(
    height: 40,
  );
}

Widget verseCipher() {
  return Container(
    height: 80,
  );
}

class Cifra extends StatelessWidget {
  final String cipher;
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      cipher,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 8,
        color: redApp,
      ),
    );
  }

  const Cifra({required this.cipher});
}
