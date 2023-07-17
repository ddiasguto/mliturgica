import 'package:diasguto/models/colors.dart';
import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  final String quote;
  final String reference;

  const Quote({super.key, required this.quote, required this.reference});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '"$quote"',
          style: TextStyle(
            color: redApp,
            fontStyle: FontStyle.italic,
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        Container(height: 10),
        Text(
          reference,
          textAlign: TextAlign.center,
          style: TextStyle(color: redApp),
        )
      ],
    );
  }
}
