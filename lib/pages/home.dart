import 'package:diasguto/components/cards_home.dart';
import 'package:diasguto/components/home_oracao.dart';
import 'package:diasguto/contents/home_img.dart';
import 'package:diasguto/db/categorized/aclamacao.dart';
import 'package:diasguto/db/categorized/comunhao.dart';
import 'package:diasguto/db/categorized/entrada.dart';
import 'package:diasguto/db/categorized/final.dart';
import 'package:diasguto/db/categorized/ofertorio.dart';
import 'package:diasguto/db/categorized/penitencial.dart';
import 'package:diasguto/db/categorized/pos_comunion.dart';
import 'package:diasguto/db/categorized/saint.dart';
import 'package:diasguto/db/uncategorized/adoration.dart';
import 'package:diasguto/db/uncategorized/holy_spirit.dart';
import 'package:diasguto/db/uncategorized/hymns.dart';
import 'package:diasguto/db/uncategorized/marianos.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardHome("Entrada", "entrance.jpg", false, entrance.length),
                  CardHome("Ato Penitencial", "penitencia.jpg", true,
                      penitencial.length),
                ],
              ),
              Container(height: 40),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                CardHome("Aclamação", "jesus-sermao-da-montanha.jpg", false,
                    aclamation.length),
                CardHome("Ofertório", "agnus.jpg", false, offers.length),
              ]),
              Container(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardHome("Santo", "agnus1.jpg", true, saint.length),
                  CardHome(
                      "Comunhão", "santissimo.jpg", false, comunion.length),
                ],
              ),
              Container(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardHome(
                      "Pós Comunhão", "agnus1.jpg", false, posComunion.length),
                  CardHome("Encerramento", "agnus1.jpg", false, ending.length),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GenericCard(
                      'Hinos de Louvor', 'agnus1.jpg', true, hymns.length),
                  GenericCard("Espirito Santo", 'holyspirit2.jpg', true,
                      holy_spirit.length)
                ],
              ),
              Container(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GenericCard('Adoração', 'agnus1.jpg', true, adoration.length),
                  GenericCard('Marianos', 'mary1.jpg', true, marianos.length)
                ],
              ),
              Container(height: 20),
              navigateToOration(context),
              Container(
                height: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
