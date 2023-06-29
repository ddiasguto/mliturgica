import 'package:diasguto/db/aclamacao.dart';
import 'package:diasguto/db/entrada.dart';
import 'package:diasguto/db/final.dart';
import 'package:diasguto/db/ofertorio.dart';
import 'package:diasguto/models/chant.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import '../db/comunhao.dart';
import '../db/lists.dart';

class Maestro with ChangeNotifier {
  List<Chant> localList = [
    teAmareiSenhor,
    aTiMeUDEUS,
    buscaiPrimeiro,
    comoEsLindo,
    aEscolhida
  ];

  int currentIndex = 0;
  int indexCategory = 0;
  String category = '';
  bool isSheet = false;
  bool isCatalogue = false;

  List<Chant> sheet = [
    teAmareiSenhor,
    aTiMeUDEUS,
    buscaiPrimeiro,
    comoEsLindo,
    aEscolhida
  ];

  List<Chant> catalogueList = [
    ...entrance,
    ...offers,
    ...aclamation,
    ...comunion,
    ...ending
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

  int randomOffer = 0;
  int randomEntrance = 0;
  int randomAclamation = 0;
  int randomComunion = 0;
  int randomEnding = 0;

  void setLocalList(String _category) {
    switch (_category) {
      case 'Entrada':
        localList = entrance;
        indexCategory = 0;
        break;
      case 'Ofertório':
        localList = offers;
        indexCategory = 1;
        break;
      case 'Aclamação':
        localList = aclamation;
        indexCategory = 2;
        break;
      case 'Comunhão':
        localList = comunion;
        indexCategory = 3;
        break;
      case 'Final':
        localList = ending;
        indexCategory = 4;
        break;

      default:
    }
    category = _category;
    isSheet = false;
    notifyListeners();
  }

  void changeChant(int index) {
    switch (index) {
      case 0:
        setRandomEntrance();
        sheet[0] = entrance[randomEntrance];
        break;
      case 1:
        setRandomOffer();
        sheet[1] = offers[randomOffer];
        break;
      case 2:
        setRandomAclamation();
        sheet[2] = aclamation[randomAclamation];
        break;
      case 3:
        setRandomComunion();
        sheet[3] = comunion[randomComunion];
        break;
      case 4:
        setRandomEnding();
        sheet[4] = ending[randomEnding];
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

  void setSheetElement(Chant element) {
    sheet[indexCategory] = element;
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

  void setRandomOffer() {
    do {
      randomOffer = Random().nextInt(offers.length);
    } while (sheet[1].title == offers[randomOffer].title);
  }

  void setRandomEntrance() {
    do {
      randomEntrance = Random().nextInt(entrance.length);
    } while (sheet[0].title == entrance[randomEntrance].title);
  }

  void setRandomAclamation() {
    do {
      randomAclamation = Random().nextInt(aclamation.length);
    } while (sheet[2].title == aclamation[randomAclamation].title);
  }

  void setRandomComunion() {
    do {
      randomComunion = Random().nextInt(comunion.length);
    } while (sheet[3].title == comunion[randomComunion].title);
  }

  void setRandomEnding() {
    do {
      randomEnding = Random().nextInt(ending.length);
    } while (sheet[4].title == ending[randomEnding].title);
  }

  void setCatalogueTrue() {
    isCatalogue = true;
    notifyListeners();
  }

  void randomSheet() {
    setRandomEntrance();
    setRandomOffer();
    setRandomAclamation();
    setRandomComunion();
    setRandomEnding();
    sheet[0] = entrance[randomEntrance];
    sheet[0] = entrance[randomEntrance];
    sheet[1] = offers[randomOffer];
    sheet[1] = offers[randomOffer];
    sheet[2] = aclamation[randomAclamation];
    sheet[2] = aclamation[randomAclamation];
    sheet[3] = comunion[randomComunion];
    sheet[3] = comunion[randomComunion];
    sheet[4] = ending[randomEnding];
    sheet[4] = ending[randomEnding];
    notifyListeners();
  }
}
