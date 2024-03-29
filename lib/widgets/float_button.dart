import 'package:diasguto/components/snack_bars.dart';
import 'package:diasguto/models/chant.dart';
import 'package:diasguto/models/colors.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:diasguto/widgets/add_to_sheet.dart';
import 'package:diasguto/widgets/already_in_sheet.dart';
import 'package:diasguto/widgets/add_catalogue.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    bool isSheet = maestro.getIsSheet;
    bool isCatalogue = maestro.getIsCatalogue;
    List<Chant> localList = maestro.getLocalList;
    int currentIndex = maestro.getCurrentIndex;
    if (!isSheet || isCatalogue) {
      return FloatingActionButton(
        onPressed: () {
          showDialog<String>(
            context: context,
            builder: floatButton,
          );
        },
        tooltip: 'Adicionar à Partitura',
        backgroundColor: Colors.cyan,
        child: Icon(
          Icons.add,
          color: Colors.green[900],
        ),
      );
    } else {
      if (localList[currentIndex].hasCypher) {
        return FloatingActionButton(
          onPressed: () {
            maestro.setShowCipher();
          },
          backgroundColor: Colors.cyan,
          child: Icon(
            Icons.queue_music_outlined,
            color: maestro.getShowCipher ? Colors.green[800] : redApp,
          ),
        );
      } else {
        return Container();
      }
    }
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
}
