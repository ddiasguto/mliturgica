import 'package:diasguto/models/colors.dart';
import 'package:diasguto/pages/show_music/show_music.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:diasguto/widgets/add_to_sheet.dart';
import 'package:diasguto/widgets/already_in_sheet.dart';
import 'package:diasguto/widgets/add_catalogue.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget chantsCategory(context) {
  Maestro maestro = Provider.of<Maestro>(context);

  return ListView.builder(
      itemCount: maestro.localList.length,
      itemBuilder: (_, index) => ListTile(
          leading: TextButton(
            child: Icon(
              Icons.add,
              color: Colors.green[800],
            ),
            onPressed: () {
              maestro.setCurrentIndex(index);
              showDialog<String>(
                context: context,
                builder: floatButton,
              );
            },
          ),
          title: Text(maestro.localList[index].title),
          iconColor: redApp,
          tileColor: Colors.cyan,
          trailing: Icon(Icons.queue_music_outlined,
              color: maestro.localList[index].hasCypher
                  ? Colors.green[800]
                  : Colors.cyan),
          selectedColor: Colors.amberAccent,
          onTap: () {
            maestro.setCurrentIndex(index);
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
