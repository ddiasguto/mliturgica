import 'package:diasguto/db/entrada.dart';
import 'package:diasguto/db/final.dart';
import 'package:diasguto/db/ofertorio.dart';
import 'package:flutter/material.dart';
import '../db/comunhao.dart';
import '../db/lists.dart';

class Maestro with ChangeNotifier {
  List offersCategory = offers;
  List entranceCategory = entrance;
  List finalCategory = ending;
  List comunionCategory = comunion;

  List localList = [
    ['Te amarei, senhor', TeAmareiSenhor()],
    ['A ti, meu Deus', AtiMeuDeus()],
    ['Como és lindo', ComoEsLindo()],
    ['A escolhida', AEscolhida()]
  ];

  int currentIndex = 0;
  String category = '';
  bool isSheet = false;

  List sheet = [
    ['Te amarei, senhor', TeAmareiSenhor()],
    ['A ti, meu Deus', AtiMeuDeus()],
    ['Como és lindo', ComoEsLindo()],
    ['A escolhida', AEscolhida()]
  ];

  get getCurrentIndex => currentIndex;
  get getLocalList => localList;
  get getCategory => category;
  get getSheet => sheet;
  get getIsSheet => isSheet;

  void setLocalList(String _category) {
    switch (_category) {
      case 'Entrada':
        localList = entranceCategory;
        break;
      case 'Ofertório':
        localList = offersCategory;
        break;
      case 'Comunhão':
        localList = comunionCategory;
        break;
      case 'Final':
        localList = finalCategory;
        break;

      default:
    }
    category = _category;
    isSheet = false;
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
      case 'Comunhão':
        sheet[2][0] = title;
        sheet[2][1] = element;
        break;
      case 'Final':
        sheet[3][0] = title;
        sheet[3][1] = element;
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
    }
    notifyListeners();
  }

  void previousItem() {
    if (currentIndex > 0) {
      currentIndex--;
    }
    notifyListeners();
  }

  void setIndexToZero() {
    currentIndex = 0;
    notifyListeners();
  }

  void setLocalListToSheet() {
    isSheet = true;
    localList = sheet;
    debugPrint('Reached here');
    notifyListeners();
  }
}
