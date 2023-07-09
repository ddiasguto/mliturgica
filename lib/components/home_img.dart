import 'package:flutter/material.dart';

List<Widget> imgHome = [
  Holymary(),
  Vatican(),
  Vatican2(),
  Vatican3(),
  Family()
];

class Holymary extends StatelessWidget {
  Widget build(context) {
    return Image.asset(
      'assets/img/holymary2.jpg',
      width: MediaQuery.of(context).size.width * .95,
      height: MediaQuery.of(context).size.width * 0.473632812 * .95,
      fit: BoxFit.cover,
    );
  }
}

class Vatican extends StatelessWidget {
  Widget build(context) {
    return Image.asset(
      'assets/img/vatican.jpg',
      width: 600,
      height: 150,
      fit: BoxFit.cover,
    );
  }
}

class Vatican2 extends StatelessWidget {
  Widget build(context) {
    return Image.asset(
      'assets/img/vatican2.jpg',
      width: 600,
      height: 150,
      fit: BoxFit.cover,
    );
  }
}

class Vatican3 extends StatelessWidget {
  Widget build(context) {
    return Image.asset(
      'assets/img/vatican3.jpg',
      width: 600,
      height: 150,
      fit: BoxFit.cover,
    );
  }
}

class Family extends StatelessWidget {
  Widget build(context) {
    return Image.asset(
      'assets/img/family.jpg',
      width: 600,
      height: 150,
      fit: BoxFit.cover,
    );
  }
}
