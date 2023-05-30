import 'package:diasguto/components/cards_home.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardHome("Entrada"),
        CardHome("Ofertório"),
        CardHome("Comunhão"),
        CardHome("Final"),
      ],
    );
  }
}
