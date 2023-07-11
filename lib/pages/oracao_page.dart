import 'package:diasguto/oracao/oracao.dart';
import 'package:flutter/material.dart';

class Oracao extends StatelessWidget {
  const Oracao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oração dos Músicos Católicos'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(22),
        child: Text(
          oracao,
          softWrap: true,
        ),
      )),
    );
  }
}
