import 'package:diasguto/components/app_bars.dart';
import 'package:diasguto/models/colors.dart';
import 'package:diasguto/oracao/oracao.dart';
import 'package:flutter/material.dart';

class Oracao extends StatelessWidget {
  const Oracao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[800],
      appBar: AppBar(
        title: Text(
          'Oração dos Músicos Católicos'.toUpperCase(),
          style: TextStyle(fontSize: 14, color: redApp),
        ),
        backgroundColor: blackApp,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            oracao,
            softWrap: true,
            style: TextStyle(color: redApp),
          ),
        ),
      ),
    );
  }
}
