import 'package:flutter/material.dart';
import '../db/lists.dart';

class Maestro with ChangeNotifier {
  List<Widget> offersCategory = offers;
  List<Widget> entranceCategory = entrance;
  List<Widget> finalCategory = ending;
  List<Widget> comunionCategory = comunion;

  List<Widget> localList = [];
  int currentIndex = 0;

  get getCurrentIndex => currentIndex;
  get getLocalList => localList;

  void setLocalList(String category) {
    switch (category) {
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
    notifyListeners();
  }

  nextOfList() {
    if (currentIndex < localList.length - 1) {
      currentIndex++;
      debugPrint(
          'Proximo Clicado $currentIndex localistlenght ${localList.length}');
    }

    notifyListeners();
  }

  previousOfList() {
    if (currentIndex > 0) {
      currentIndex--;
    }
    notifyListeners();
  }
}
