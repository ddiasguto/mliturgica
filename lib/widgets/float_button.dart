import 'package:diasguto/provider/Maestro.dart';
import 'package:diasguto/widgets/add_to_sheet.dart';
import 'package:diasguto/widgets/already_in_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    bool isSheet = maestro.getIsSheet;

    if (!isSheet) {
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
      return Container();
    }
  }

  Widget floatButton(context) {
    Maestro maestro = Provider.of<Maestro>(context);
    List localList = maestro.getLocalList;
    int currentIndex = maestro.getCurrentIndex;
    int indexCategory = maestro.getIndexCategory;
    List sheet = maestro.getSheet;

    String str1 = localList[currentIndex][0].toString().toLowerCase();
    String str2 = sheet[indexCategory][0].toString().toLowerCase();

    if (str1 == str2) {
      return alreadyInSheet(context);
    } else {
      return addToSheet(context);
    }
  }
}
