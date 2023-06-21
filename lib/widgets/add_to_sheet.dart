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
      'Adicionar à partitura?',
      style: TextStyle(color: Colors.cyan, fontSize: 18),
    ),
    content: Container(
      width: 120,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                  "Cântico de ${maestro.getCategory.toString().toLowerCase()} atual:"),
            ],
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\"${maestro.getSheet[indexCategory].title}\"",
                style: TextStyle(
                  color: Color.fromARGB(255, 116, 12, 12),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ],
      ),
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
          Navigator.pop(context);
          maestro.setSheetElement(
            localList[currentIndex],
          );
        },
        child: const Text(
          'Adicionar',
          style: TextStyle(color: Colors.cyan, fontSize: 18),
        ),
      ),
    ],
  );
}
