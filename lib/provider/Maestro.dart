import 'package:diasguto/db/aclamacao.dart';
import 'package:diasguto/db/entrada.dart';
import 'package:diasguto/db/final.dart';
import 'package:diasguto/db/ofertorio.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import '../db/comunhao.dart';
import '../db/lists.dart';

class Maestro with ChangeNotifier {
  List localList = [
    ['Te amarei, senhor', TeAmareiSenhor()],
    ['A ti, meu Deus', AtiMeuDeus()],
    ['Como és lindo', ComoEsLindo()],
    ['A escolhida', AEscolhida()]
  ];

  int currentIndex = 0;
  int indexCategory = 0;
  String category = '';
  bool isSheet = false;

  List sheet = [
    ['Te amarei, senhor', TeAmareiSenhor()],
    ['A ti, meu Deus', AtiMeuDeus()],
    ['Buscai Primeiro', BuscaiPrimeiro()],
    ['Como és lindo', ComoEsLindo()],
    ['A escolhida', AEscolhida()]
  ];

  List catalogueList = [
    ...entrance,
    ...offers,
    ...aclamation,
    ...comunion,
    ...ending
  ];

  get getCurrentIndex => currentIndex;
  get getIndexCategory => indexCategory;
  get getLocalList => localList;
  get getCategory => category;
  get getSheet => sheet;
  get getIsSheet => isSheet;
  get getCatalogueList => catalogueList;

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
        sheet[0][0] = entrance[randomEntrance][0];
        sheet[0][1] = entrance[randomEntrance][1];
        break;
      case 1:
        setRandomOffer();
        sheet[1][0] = offers[randomOffer][0];
        sheet[1][1] = offers[randomOffer][1];
        break;
      case 2:
        setRandomAclamation();
        sheet[2][0] = aclamation[randomAclamation][0];
        sheet[2][1] = aclamation[randomAclamation][1];
        break;
      case 3:
        setRandomComunion();
        sheet[3][0] = aclamation[randomComunion][0];
        sheet[3][1] = aclamation[randomComunion][1];
        break;
      case 4:
        setRandomEnding();
        sheet[4][0] = ending[randomEnding][0];
        sheet[4][1] = ending[randomEnding][1];
        break;
    }
    notifyListeners();
  }

  void setSheetElement(String title, Widget element) {
    switch (category) {
      case 'Entrada':
        sheet[0][0] = title;
        sheet[0][1] = element;
        break;
      case 'Ofertório':
        sheet[1][0] = title;
        sheet[1][1] = element;
        break;

      case 'Aclamação':
        sheet[2][0] = title;
        sheet[2][1] = element;
        break;

      case 'Comunhão':
        sheet[3][0] = title;
        sheet[3][1] = element;
        break;
      case 'Final':
        sheet[4][0] = title;
        sheet[4][1] = element;
        break;
      default:
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
      indexCategory++;
    }
    notifyListeners();
  }

  void previousItem() {
    if (currentIndex > 0) {
      currentIndex--;
      indexCategory--;
    }
    notifyListeners();
  }

  void setIndexToZero() {
    currentIndex = 0;
    indexCategory = 0;
    notifyListeners();
  }

  void setLocalListToSheet() {
    isSheet = true;
    localList = sheet;
    notifyListeners();
  }

  void setLocalListToCatalogue() {
    isSheet = true;
    localList = catalogueList;
    notifyListeners();
  }

  void setRandomOffer() {
    do {
    randomOffer = Random().nextInt(offers.length);
    } while (sheet[1][0] == offers[randomOffer][0]);
  }

  void setRandomEntrance() {
    do {
    randomEntrance = Random().nextInt(entrance.length);
    } while (sheet[0][0] == entrance[randomEntrance][0]);
  }

  void setRandomAclamation() {
    do {
    randomAclamation = Random().nextInt(aclamation.length);
    } while (sheet[2][0] == aclamation[randomAclamation][0]);
  }

  void setRandomComunion() {
    do {
    randomComunion = Random().nextInt(comunion.length);
    } while (sheet[3][0] == comunion[randomComunion][0]);
  }

  void setRandomEnding() {
    do {
    randomEnding = Random().nextInt(ending.length);
    } while (sheet[4][0] == ending[randomEnding][0]);
  }

  void randomSheet() {
    setRandomEntrance();
    setRandomOffer();
    setRandomAclamation();
    setRandomComunion();
    setRandomEnding();
    sheet[0][0] = entrance[randomEntrance][0];
    sheet[0][1] = entrance[randomEntrance][1];
    sheet[1][0] = offers[randomOffer][0];
    sheet[1][1] = offers[randomOffer][1];
    sheet[2][0] = aclamation[randomAclamation][0];
    sheet[2][1] = aclamation[randomAclamation][1];
    sheet[3][0] = comunion[randomComunion][0];
    sheet[3][1] = comunion[randomComunion][1];
    sheet[4][0] = ending[randomEnding][0];
    sheet[4][1] = ending[randomEnding][1];
    notifyListeners();
  }
}
