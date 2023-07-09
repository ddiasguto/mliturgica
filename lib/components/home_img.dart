import 'package:flutter/material.dart';

List<Widget> imgHome = [Holymary(), Family(), Samaria(), Vatican(), Vatican2()];

class Holymary extends StatelessWidget {
  Widget build(context) {
    return Image.asset(
      'assets/img_home/holymary2.jpg',
      width: MediaQuery.of(context).size.width * .95,
      height: MediaQuery.of(context).size.width * 0.473632812 * .95,
      fit: BoxFit.cover,
    );
  }
}

class Family extends StatelessWidget {
  Widget build(context) {
    return Image.asset(
      'assets/home_img/family.jpg',
      width: MediaQuery.of(context).size.width * .95,
      height: MediaQuery.of(context).size.width * 0.473632812 * .95,
      fit: BoxFit.cover,
    );
  }
}

class Samaria extends StatelessWidget {
  Widget build(context) {
    return Image.asset(
      'assets/home_img/samaria2.jpg',
      width: MediaQuery.of(context).size.width * .95,
      height: MediaQuery.of(context).size.width * 0.473632812 * .95,
      fit: BoxFit.cover,
    );
  }
}

class Vatican extends StatelessWidget {
  Widget build(context) {
    return Image.asset(
      'assets/home_img/vatican3.jpg',
      width: MediaQuery.of(context).size.width * .95,
      height: MediaQuery.of(context).size.width * 0.473632812 * .95,
      fit: BoxFit.cover,
    );
  }
}

class Vatican2 extends StatelessWidget {
  Widget build(context) {
    return Image.asset(
      'assets/home_img/vatican4.jpg',
      width: MediaQuery.of(context).size.width * .95,
      height: MediaQuery.of(context).size.width * 0.473632812 * .95,
      fit: BoxFit.cover,
    );
  }
}
