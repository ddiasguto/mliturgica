import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget addToSheet(context) {
  Maestro maestro = Provider.of<Maestro>(context);
  int indexCategory = maestro.getIndexCategory;
  int currentIndex = maestro.getCurrentIndex;
  List localList = maestro.getLocalList;
  return AlertDialog(
    title: const Text(
      'Adicionar à Partitura?',
      style: TextStyle(color: Colors.cyan, fontSize: 18),
    ),
    content: Container(
      width: 120,
      child: Text(
          "Sera adicionado como cântico de ${maestro.getCategory}. O Cântico \"${maestro.getSheet[indexCategory][0]}\" será substituído."),
    ),
    actionsAlignment: MainAxisAlignment.spaceEvenly,
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.pop(context, 'Cancel'),
        child: const Text(
          'Cancelar',
          style:
              TextStyle(color: Color.fromARGB(255, 116, 12, 12), fontSize: 18),
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.pop(context, 'Confirm');
          maestro.setSheetElement(
              localList[currentIndex][0], localList[currentIndex][1]);
        },
        child: const Text(
          'Adicionar',
          style: TextStyle(color: Colors.cyan, fontSize: 18),
        ),
      ),
    ],
  );
}
