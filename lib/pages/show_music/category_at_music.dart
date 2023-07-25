import 'package:diasguto/models/colors.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget categoryAtMusic(context) {
  Maestro maestro = Provider.of<Maestro>(context);
  bool isSheet = maestro.getIsSheet;
  bool isCatalogue = maestro.getIsCatalogue;
  int currentIndex = maestro.getCurrentIndex;

  if (isCatalogue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 15,
          height: 30,
        ),
        Text(
          maestro.localList[currentIndex].category.toUpperCase(),
          style: TextStyle(fontSize: 16, color: redApp),
          textAlign: TextAlign.end,
        ),
      ],
    );
  } else if (isSheet) {
    List<String> categories = [
      'Entrada',
      'Ato Penitencial',
      'Hino de Louvor',
      'Aclamação',
      'Ofertório',
      'Santo',
      'Comunhão',
      'Pós Comunhão',
      'Encerramento'
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 15,
          height: 30,
        ),
        Text(
          categories.elementAt(currentIndex).toUpperCase(),
          style: TextStyle(fontSize: 16, color: redApp),
          textAlign: TextAlign.end,
        ),
      ],
    );
  } else {
    return Container(
      height: 30,
    );
  }
}
