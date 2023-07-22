import 'package:diasguto/contents/home_img.dart';
import 'package:diasguto/contents/quotes.dart';
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
import 'package:diasguto/functions/shared.dart';
import 'package:diasguto/models/chant.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';

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
  bool removeImgHome = true;

  List<String> aux = [
    'entrance',
    'penitencial',
    '',
    'aclamacao',
    'ofertorio',
    'santo',
    'comunhao',
    'poscomunhao',
    'encerramento'
  ];

  void startSheetStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getInt('sheetStatus') != null) {
      sheetIndex = prefs.getInt('sheetStatus')!;
    } else {
      sheetIndex = 0;
    }
  }

  void startSheet() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    for (int j = 0; j < aux.length; j++) {
      if (j == 2) {
        continue;
      }
      if (prefs.getString(aux[j]) != null) {
        for (int i = 0; i < catalogueList.length; i++) {
          if (prefs.getString(aux[j]).toString().toLowerCase() ==
              catalogueList[i].title.toLowerCase()) {
            sheet[j] = catalogueList[i];
          }
        }
      }
    }
    notifyListeners();
  }

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
  get getProgress => progress;
  get getRandomQuote => randomQuote;
  get getHasHymn => hasHymn;
  get getHasLamb => hasLamb;
  get getFullProgress => fullProgress;
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
  int randomQuote = 0;
  int sheetLenght = 9;
  int fullProgress = 0;
  int progress = 0;
  int sheetIndex = 0;
  bool hasHymn = true;
  bool hasLamb = true;

  void setShowCipher() {
    showCipher = !showCipher;
    notifyListeners();
  }

  void randomContent() {
    randomImg = Random().nextInt(imgHome.length);
    randomQuote = Random().nextInt(Quotes.length);
  }

  void filterSearchResults(String query) {
    catalogueList
        .where((item) => item.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    notifyListeners();
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
        indexCategory = 3;
        break;

      case 'Ofertório':
        localList = offers;
        indexCategory = 4;
        break;

      case 'Santo':
        localList = saint;
        indexCategory = 5;
        break;

      case 'Comunhão':
        localList = comunion;
        indexCategory = 6;
        break;

      case 'Pós Comunhão':
        localList = posComunion;
        indexCategory = 7;
        break;
      case 'Encerramento':
        localList = ending;
        indexCategory = 8;
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

  void handleHasHymn() {
    hasHymn = !hasHymn;
    notifyListeners();
  }

  void handleImgHome() {
    removeImgHome = !removeImgHome;
    notifyListeners();
  }

  void handleHasLamb() {
    hasLamb = !hasLamb;
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
      case 6:
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

  void setLocalListTofull() {
    fullProgress = localList.length;
    notifyListeners();
  }

  void setSheetProgress() {
    fullProgress = sheetLenght;
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
      persistData(indexCatalogue, element.title);
    } else {
      sheet[indexCategory] = element;
      persistData(indexCategory, element.title);
    }

    notifyListeners();
  }

  void setCurrentIndex(int i) {
    currentIndex = i;
    progress = i + 1;
    notifyListeners();
  }

  void setCurrentIndexForSheet() {
    currentIndex = sheetIndex;
    progress = currentIndex + 1;
  }

  void setSheetLenght() {
    sheetLenght = 9;
    if (!hasHymn) {
      sheetLenght--;
    }
    notifyListeners();
  }

  void nextItem() {
    if (currentIndex < localList.length - 1) {
      if (isSheet) {
        incrementIndexAtSheet();
      } else {
        currentIndex++;
      }
      progress++;
    }

    notifyListeners();
  }

  void incrementIndexAtSheet() {
    if (!hasHymn && sheetIndex == 1) {
      sheetIndex += 2;
      indexCategory += 2;
    } else {
      sheetIndex++;
      indexCategory++;
    }
    setSheetStatus(sheetIndex);
    currentIndex = sheetIndex;
  }

  void decrementIndexAtSheet() {
    if (!hasHymn && sheetIndex == 3) {
      sheetIndex -= 2;
      indexCategory -= 2;
    } else {
      sheetIndex--;
      indexCategory--;
    }
    setSheetStatus(sheetIndex);
    currentIndex = sheetIndex;
  }

  void previousItem() {
    if (currentIndex > 0) {
      if (isSheet) {
        decrementIndexAtSheet();
      } else {
        currentIndex--;
      }
      progress--;
    }

    notifyListeners();
  }

  void setIndexToZero() {
    currentIndex = 0;
    progress = 1;
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
    randomHymn = (randomHymn + 1) % hymns.length;
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
    sheet[3] = aclamation[randomAclamation];
    sheet[4] = offers[randomOffer];
    sheet[5] = saint[randomSaint];
    sheet[6] = comunion[randomComunion];
    sheet[7] = posComunion[randomPosComunion];
    sheet[8] = ending[randomEnding];
    notifyListeners();
  }
}
