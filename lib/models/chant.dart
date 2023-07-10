import 'package:flutter/material.dart';

class Chant {
  final String title;
  final String category;
  final List<Widget> lyrics;
  final bool hasCypher;
  List<Widget> ciphers = [];
  Chant(
      {required this.title,
      required this.category,
      required this.lyrics,
      required this.hasCypher,
      ciphers});
}
