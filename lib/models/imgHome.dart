import 'package:flutter/material.dart';

class ImgHome extends StatelessWidget {
  final String filename;
  final bool hasLegend;
  final String description;

  Widget build(context) {
    return Image.asset(
      'assets/home_img/$filename.jpg',
      width: MediaQuery.of(context).size.width * .95,
      height: MediaQuery.of(context).size.width * 0.473632812 * .95,
      fit: BoxFit.cover,
    );
  }

  const ImgHome(
      {super.key,
      required this.filename,
      required this.hasLegend,
      required this.description});
}
