import 'package:diasguto/components/cards_home.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';

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
