import 'package:diasguto/models/colors.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:diasguto/widgets/add_to_sheet.dart';
import 'package:diasguto/widgets/already_in_sheet.dart';
import 'package:diasguto/widgets/radio_catalogue.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/show_music.dart';

Widget chantsCatalogue(context) {
  Maestro maestro = Provider.of<Maestro>(context);

  return ListView.builder(
      itemCount: maestro.catalogueList.length,
      itemBuilder: (_, index) => ListTile(
          leading: TextButton(
            child: Icon(
              Icons.add,
              color: Colors.green[800],
            ),
            onPressed: () {
              maestro.setLocalListToCatalogue();
              maestro.setCurrentIndex(index);

              maestro.setCatalogueTrue();
              maestro.setSheetFalse();

              showDialog<String>(
                context: context,
                builder: floatButton,
              );
            },
          ),
          title: Text('${maestro.getCatalogueList[index].title}'.toUpperCase(),
              style: TextStyle(fontSize: 16)),
          subtitle: Text(
            '${maestro.getCatalogueList[index].category}'.toUpperCase(),
            style: TextStyle(
              color: redApp,
            ),
          ),
          trailing: Icon(Icons.queue_music_outlined,
              color: maestro.catalogueList[index].hasCypher
                  ? Colors.green[800]
                  : Colors.cyan[400]),
          tileColor: Colors.cyan[400],
          selectedColor: Colors.amberAccent,
          onTap: () {
            maestro.setLocalListToCatalogue();
            maestro.setCurrentIndex(index);
            maestro.setCatalogueTrue();
            maestro.setSheetFalse();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ShowMusic()));
          }));
}

Widget floatButton(context) {
  Maestro maestro = Provider.of<Maestro>(context);
  List localList = maestro.getLocalList;
  int currentIndex = maestro.getCurrentIndex;
  int indexCategory = maestro.getIndexCategory;
  List sheet = maestro.getSheet;
  bool isCatalogue = maestro.getIsCatalogue;

  if (!isCatalogue) {
    String str1 = localList[currentIndex].title;
    String str2 = sheet[indexCategory].title;
    if (str1 == str2) {
      return alreadyInSheet(context);
    } else {
      return addToSheet(context);
    }
  } else {
    return addOnCatalogue(context);
  }
}
