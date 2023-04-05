import 'package:diasguto/components/cards_home.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Danniel é lindo!',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color.fromARGB(255, 29, 168, 115),
            ),
          ),
        ),
        CardHome("Entrada", 1),
        CardHome("Ofertório", 2),
        CardHome("Comunhão", 3),
        CardHome("Final", 4),
      ],
    );
  }
}
