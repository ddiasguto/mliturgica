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
            CardHome("Entrada"),
            CardHome("Ofertório"),
          ],
        ),
        const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CardHome("Aclamação"),
          CardHome("Comunhão"),
        ]),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardHome("Final"),
          ],
        ),
      ],
    );
  }
}
