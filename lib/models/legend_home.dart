import 'package:flutter/material.dart';

class LegendHome extends StatelessWidget {
  final String description;

  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 22, right: 22),
      child: Text(
        description,
        style: TextStyle(color: Colors.green[200], fontSize: 10),
        softWrap: true,
        textAlign: TextAlign.center,
      ),
    );
  }

  const LegendHome({super.key, required this.description});
}
