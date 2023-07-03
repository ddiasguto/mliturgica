import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget addOnCatalogue(context) {
  Maestro maestro = Provider.of<Maestro>(context);
  int indexCategory = maestro.getIndexCategory;
  int currentIndex = maestro.getCurrentIndex;
  List localList = maestro.getLocalList;
  int index = maestro.getIndexCatalogue;
  return AlertDialog(
    title: const Text(
      'Adicionar como:',
      style: TextStyle(color: Colors.cyan, fontSize: 18),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          dense: true,
          title: const Text('Entrada'),
          leading: Radio<int>(
            value: 0,
            groupValue: index,
            onChanged: (value) {
              maestro.setIndexCatalogue(0);
            },
          ),
        ),
        ListTile(
          dense: true,
          title: const Text('Ofertório'),
          leading: Radio<int>(
            value: 1,
            groupValue: index,
            onChanged: (value) {
              maestro.setIndexCatalogue(1);
            },
          ),
        ),
        ListTile(
          dense: true,
          title: const Text('Aclamação'),
          leading: Radio<int>(
            value: 2,
            groupValue: index,
            onChanged: (value) {
              maestro.setIndexCatalogue(2);
            },
          ),
        ),
        ListTile(
          dense: true,
          title: const Text('Comunhão'),
          leading: Radio<int>(
            value: 3,
            groupValue: index,
            onChanged: (value) {
              maestro.setIndexCatalogue(3);
            },
          ),
        ),
        ListTile(
          dense: true,
          title: const Text('Encerramento'),
          leading: Radio<int>(
            value: 4,
            groupValue: index,
            onChanged: (value) {
              maestro.setIndexCatalogue(4);
            },
          ),
        ),
      ],
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
          final snackbar = SnackBar(
            content: const Text('Adicionado.'),
            backgroundColor: Colors.green[800],
          );
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        },
        child: const Text(
          'Adicionar',
          style: TextStyle(color: Colors.cyan, fontSize: 18),
        ),
      ),
    ],
  );
}
