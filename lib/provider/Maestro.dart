import 'package:diasguto/components/home_img.dart';
import 'package:diasguto/db/categorized/aclamacao.dart';
import 'package:diasguto/db/categorized/entrada.dart';
import 'package:diasguto/db/categorized/final.dart';
import 'package:diasguto/db/uncategorized/adoration.dart';
import 'package:diasguto/db/uncategorized/holy_spirit.dart';
import 'package:diasguto/db/uncategorized/hymns.dart';
import 'package:diasguto/db/categorized/ofertorio.dart';
import 'package:diasguto/db/categorized/penitencial.dart';
import 'package:diasguto/db/categorized/pos_comunion.dart';
import 'package:diasguto/db/categorized/saint.dart';
import 'package:diasguto/db/categorized/comunhao.dart';
import 'package:diasguto/db/uncategorized/marianos.dart';
import 'package:diasguto/models/chant.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Maestro with ChangeNotifier {
  List<Chant> localList = [
    teAmareiSenhor,
    buscaiPrimeiro,
    comoEsLindo,
    aTiMeUDEUS,
    aEscolhida
  ];

  int currentIndex = 0;
  int indexCategory = 0;
  int indexCatalogue = 0;
  String category = '';
  bool isSheet = false;
  bool isCatalogue = false;
  bool showCipher = false;

  List<Chant> sheet = [
    teAmareiSenhor,
    senhorPiedade,
    hinoDeLouvor,
    buscaiPrimeiro,
    aTiMeUDEUS,
    santo,
    comoEsLindo,
    estasEntreNos,
    aEscolhida,
  ];

  List<Chant> catalogueList = [
    ...entrance,
    ...offers,
    ...aclamation,
    ...comunion,
    ...ending,
    ...hymns,
    ...saint,
    ...marianos,
    ...adoration,
    ...posComunion,
    ...penitencial,
    ...holy_spirit
  ];

  void sortCatalogue() {
    catalogueList.sort((a, b) => a.title.compareTo(b.title));
  }

  get getCurrentIndex => currentIndex;
  get getIndexCategory => indexCategory;
  get getLocalList => localList;
  get getCategory => category;
  get getSheet => sheet;
  get getIsSheet => isSheet;
  get getCatalogueList => catalogueList;
  get getIsCatalogue => isCatalogue;
  get getIndexCatalogue => indexCatalogue;
  get getRandomImg => randomImg;
  get getShowCipher => showCipher;

  int randomEntrance = 0;
  int randomPenitencial = 0;
  int randomAclamation = 0;
  int randomOffer = 0;
  int randomComunion = 0;
  int randomPosComunion = 0;
  int randomSaint = 0;
  int randomEnding = 0;
  int randomImg = 0;
  int randomHymn = 0;

  void setShowCipher() {
    showCipher = !showCipher;
    notifyListeners();
  }

  void randomImgHome() {
    randomImg = Random().nextInt(imgHome.length);
  }

  void setLocalList(String _category) {
    switch (_category) {
      case 'Entrada':
        localList = entrance;
        indexCategory = 0;
        break;
      case 'Ato Penitencial':
        localList = penitencial;
        indexCategory = 1;
        break;

      case 'Aclamação':
        localList = aclamation;
        indexCategory = 2;
        break;

      case 'Ofertório':
        localList = offers;
        indexCategory = 3;
        break;

      case 'Santo':
        localList = saint;
        indexCategory = 4;
        break;

      case 'Comunhão':
        localList = comunion;
        indexCategory = 5;
        break;

      case 'Pós Comunhão':
        localList = posComunion;
        indexCategory = 6;
        break;
      case 'Encerramento':
        localList = ending;
        indexCategory = 7;
        break;

      default:
    }
    category = _category;
    notifyListeners();
  }

  void setLocalListUncategorized(String _category) {
    switch (_category) {
      case 'Marianos':
        localList = marianos;
        category = _category;
        break;
      case 'Espirito Santo':
        localList = holy_spirit;
        category = _category;
        break;

      case 'Hinos de Louvor':
        localList = hymns;
        category = _category;
        break;

      case 'Adoração':
        localList = adoration;
        category = _category;
        break;

      default:
    }
    notifyListeners();
  }

  void setHymnToLocalist() {
    localList = hymns;
    notifyListeners();
  }

  void changeChant(int index) {
    switch (index) {
      case 0:
        setRandomEntrance();
        sheet[0] = entrance[randomEntrance];
        break;
      case 1:
        setRandomPenitencial();
        sheet[1] = penitencial[randomPenitencial];
        break;
      case 2:
        setRandomHymn();
        sheet[2] = hymns[randomHymn];
        break;
      case 3:
        setRandomAclamation();
        sheet[3] = aclamation[randomAclamation];
        break;
      case 4:
        setRandomOffer();
        sheet[4] = offers[randomOffer];
        break;
      case 5:
        setRandomSaint();
        sheet[5] = saint[randomSaint];
        break;
      case 5:
        setRandomComunion();
        sheet[5] = comunion[randomComunion];
        break;

      case 7:
        setRandomPosComunion();
        sheet[7] = posComunion[randomPosComunion];
        break;

      case 8:
        setRandomEnding();
        sheet[8] = ending[randomEnding];
        break;
    }
    notifyListeners();
  }

  void setCatalogueFalse() {
    isCatalogue = false;
    notifyListeners();
  }

  void setSheetFalse() {
    isSheet = false;
    notifyListeners();
  }

  void setSheetTrue() {
    isSheet = true;
    notifyListeners();
  }

  void setIndexCatalogue(int index) {
    indexCatalogue = index;
    notifyListeners();
  }

  void setSheetElement(Chant element) {
    if (isCatalogue) {
      sheet[indexCatalogue] = element;
    } else {
      sheet[indexCategory] = element;
    }
    notifyListeners();
  }

  void setCurrentIndex(int i) {
    currentIndex = i;
    notifyListeners();
  }

  void nextItem() {
    if (currentIndex < localList.length - 1) {
      currentIndex++;
    }
    if (isSheet) {
      indexCategory++;
    }
    notifyListeners();
  }

  void previousItem() {
    if (currentIndex > 0) {
      currentIndex--;
    }

    if (isSheet) {
      indexCategory--;
    }
    notifyListeners();
  }

  void setIndexToZero() {
    currentIndex = 0;
    notifyListeners();
  }

  void setLocalListToSheet() {
    indexCategory = 0;
    isSheet = true;
    isCatalogue = false;
    localList = sheet;
    notifyListeners();
  }

  void setLocalListToCatalogue() {
    isCatalogue = true;
    isSheet = false;
    localList = catalogueList;
    notifyListeners();
  }

  void setRandomHymn() {
    do {
      randomHymn = Random().nextInt(hymns.length);
    } while (sheet[2].title == hymns[randomHymn].title);
  }

  void setRandomOffer() {
    do {
      randomOffer = Random().nextInt(offers.length);
    } while (sheet[3].title == offers[randomOffer].title);
  }

  void setRandomPenitencial() {
    do {
      randomPenitencial = Random().nextInt(penitencial.length);
    } while (sheet[1].title == penitencial[randomPenitencial].title);
  }

  void setRandomEntrance() {
    do {
      randomEntrance = Random().nextInt(entrance.length);
    } while (sheet[0].title == entrance[randomEntrance].title);
  }

  void setRandomSaint() {
    do {
      randomSaint = Random().nextInt(saint.length);
    } while (sheet[4].title == saint[randomSaint].title);
  }

  void setRandomAclamation() {
    do {
      randomAclamation = Random().nextInt(aclamation.length);
    } while (sheet[2].title == aclamation[randomAclamation].title);
  }

  void setRandomComunion() {
    do {
      randomComunion = Random().nextInt(comunion.length);
    } while (sheet[5].title == comunion[randomComunion].title);
  }

  void setRandomPosComunion() {
    do {
      randomPosComunion = Random().nextInt(posComunion.length);
    } while (sheet[6].title == posComunion[randomPosComunion].title);
  }

  void setRandomEnding() {
    do {
      randomEnding = Random().nextInt(ending.length);
    } while (sheet[7].title == ending[randomEnding].title);
  }

  void setCatalogueTrue() {
    isCatalogue = true;
    notifyListeners();
  }

  void randomSheet() {
    setRandomEntrance();
    setRandomPenitencial();
    setRandomAclamation();
    setRandomOffer();
    setRandomSaint();
    setRandomComunion();
    setRandomPosComunion();
    setRandomEnding();
    sheet[0] = entrance[randomEntrance];
    sheet[1] = penitencial[randomPenitencial];
    sheet[2] = aclamation[randomAclamation];
    sheet[3] = offers[randomOffer];
    sheet[4] = saint[randomSaint];
    sheet[5] = comunion[randomComunion];
    sheet[6] = posComunion[randomPosComunion];
    sheet[7] = ending[randomEnding];
    notifyListeners();
  }
}
