import 'package:diasguto/db/entrada.dart';
import 'package:diasguto/db/final.dart';
import 'package:diasguto/db/ofertorio.dart';
import 'package:flutter/material.dart';
import '../db/comunhao.dart';
import '../db/lists.dart';

class Maestro with ChangeNotifier {
  List<Widget> offersCategory = offers;
  List<Widget> entranceCategory = entrance;
  List<Widget> finalCategory = ending;
  List<Widget> comunionCategory = comunion;

  List<Widget> localList = [];
  int currentIndex = 0;
  String category = '';
  bool isSheet = false;

  List<Widget> sheet = [
    const TeAmareiSenhor(),
    const AtiMeuDeus(),
    const ComoEsLindo(),
    const AEscolhida()
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

  void setSheetElement(Widget element) {
    switch (category) {
      case 'Entrada':
        sheet[0] = element;
        break;
      case 'Ofertório':
        sheet[1] = element;
        break;
      case 'Comunhão':
        sheet[2] = element;
        break;
      case 'Final':
        sheet[3] = element;
        break;
      default:
    }
    notifyListeners();
  }

  void setLocalListToSheet() {
    isSheet = true;
    localList = sheet;
    debugPrint('Reached here');
    notifyListeners();
  }
}
