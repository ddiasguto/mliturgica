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
  JesusPensante,
  faustina,
  sermao,
  edith,
  agostinho,
  holyspirit,
  joana,
  francis
];

String putLegend(ImgHome element) {
  String str = element.hasLegend ? element.description : '';
  return str;
}

ImgHome francis = ImgHome(
  filename: 'francis',
  hasLegend: true,
  description: "São Francisco de Assis",
);

ImgHome joana = ImgHome(
  filename: 'joana',
  hasLegend: true,
  description:
      "Aparição de Santa Catarina e Santa Margarida à Joana d'Arc, a donzela de Orleans",
);

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
        "Santa Teresinha do Menino Jesus (1873-1897)\n Carmelita doutora da Igreja");

ImgHome TeresaAvila1 = ImgHome(
  filename: 'teresadavila1',
  hasLegend: true,
  description: "Santa Teresa d'Ávila (1515-182)\n Carmelita doutora da Igreja",
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

ImgHome faustina = ImgHome(
  filename: 'faustina',
  hasLegend: true,
  description:
      "Santa Faustina Kowaska (1905-1938)\n Apostola da Divina Misericórida",
);

ImgHome sermao = ImgHome(
  filename: "jesus-sermao-da-montanha",
  hasLegend: true,
  description: "Sermão sobre a montanha (Mt 5)",
);

ImgHome agostinho = ImgHome(
    filename: 'agostinho',
    hasLegend: true,
    description: 'Santo Agostinho de Hipona (354 - 430)\n Doutor da graça');

ImgHome edith = ImgHome(
    filename: 'edith',
    hasLegend: true,
    description: 'Santa Edith Stein (1891-1942)\n Doutora da Igreja');

ImgHome holyspirit = ImgHome(
  filename: 'holyspirit',
  hasLegend: false,
  description: '',
);
