import 'package:diasguto/components/cards_home.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 18.0,
      crossAxisSpacing: 18,
      padding: EdgeInsets.all(18.0),
      crossAxisCount: 2,
      children: [
        CardHome("Entrada"),
        CardHome("Ofertório"),
        CardHome("Comunhão"),
        CardHome("Final"),
      ],
    );
  }
}
