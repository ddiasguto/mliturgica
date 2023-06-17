import 'package:diasguto/components/cards_home.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardHome("Entrada", "agnus1.jpg"),
            CardHome("Ofertório", "agnus1.jpg"),
          ],
        ),
        const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CardHome("Aclamação", "samaria.jpg"),
          CardHome("Comunhão", "corpus.jpg"),
        ]),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardHome("Final", "agnus1.jpg"),
          ],
        ),
      ],
    );
  }
}
