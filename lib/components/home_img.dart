import 'package:diasguto/models/imgHome.dart';
import 'package:diasguto/models/legend_home.dart';
import 'package:flutter/material.dart';

List<ImgHome> imgHome = [
  Holymary,
  Family,
  Samaria,
  Vatican,
  Vatican2,
  Teresinha1,
  TeresaAvila1,
  TeresaAvila2,
  JesusPensante
];

String putLegend(ImgHome element) {
  String str = element.hasLegend ? element.description : '';
  return str;
}

ImgHome Holymary = ImgHome(
  filename: 'holymary2',
  hasLegend: false,
  description: '',
);

ImgHome Family = ImgHome(
  filename: 'family',
  hasLegend: false,
  description: '',
);

ImgHome Samaria = ImgHome(
    filename: 'samaria2',
    hasLegend: true,
    description: 'Jesus e a samaritana (Jo 4)');

ImgHome Vatican = ImgHome(
  filename: 'vatican3',
  hasLegend: false,
  description: '',
);

ImgHome Vatican2 = ImgHome(
  filename: 'vatican4',
  hasLegend: false,
  description: '',
);

ImgHome Teresinha1 = ImgHome(
    filename: 'teresinha1',
    hasLegend: true,
    description:
        "Santa Teresinha do Menino Jesus e da Sagrada face (1873-1897), carmelita doutora da Igreja");

ImgHome TeresaAvila1 = ImgHome(
  filename: 'teresadavila1',
  hasLegend: true,
  description: "santa Teresa d'Ávila (1515-182), carmelita doutora da Igreja",
);

ImgHome TeresaAvila2 = ImgHome(
  filename: 'teresadavila2',
  hasLegend: false,
  description: '',
);

ImgHome JesusPensante = ImgHome(
  filename: 'jesuspensante',
  hasLegend: false,
  description: '',
);
