import 'package:diasguto/components/cards_home.dart';
import 'package:diasguto/components/home_img.dart';
import 'package:diasguto/provider/Design.dart';
import 'package:flutter/material.dart';
import 'package:diasguto/models/colors.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Design builder = Provider.of<Design>(context);
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        imgHome[builder.setHomeIMG()],
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Liturgia da Missa'.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, color: redApp),
          ),
        ),
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
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Diversos'.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, color: redApp),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card2('Hinos de Louvor', 'agnus1.jpg'),
            Card2("Espirito Santo", 'agnus1.jpg')
          ],
        )
      ],
    );
  }
}
