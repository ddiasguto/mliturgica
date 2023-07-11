import 'package:diasguto/components/app_bars.dart';
import 'package:diasguto/components/cards_home.dart';
import 'package:diasguto/components/home_img.dart';
import 'package:diasguto/models/legend_home.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:diasguto/models/colors.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    int randomImg = maestro.getRandomImg;
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              imgHome[randomImg],
              imgHome[randomImg].hasLegend
                  ? LegendHome(description: putLegend(imgHome[randomImg]))
                  : Container()
            ]),
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
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
                  CardHome("Entrada", "agnus1.jpg", false),
                  CardHome("Ato Penitencial", "agnus1.jpg", false),
                ],
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CardHome("Aclamação", "samaria.jpg", false),
                CardHome("Ofertório", "corpus.jpg", false),
              ]),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardHome("Santo", "agnus1.jpg", false),
                  CardHome("Comunhão", "santissimo.jpg", false),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardHome("Pós Comunhão", "agnus1.jpg", false),
                  CardHome("Encerramento", "agnus1.jpg", false),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GenericCard('Hinos de Louvor', 'agnus1.jpg', false),
                  GenericCard("Espirito Santo", 'holyspirit2.jpg', false)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GenericCard('Adoração', 'agnus1.jpg', false),
                  GenericCard('Marianos', 'mary1.jpg', false)
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
