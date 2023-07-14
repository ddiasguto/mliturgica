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
    content: DropdownButton<int>(
      value: index,
      elevation: 16,
      style: TextStyle(
        color: Color.fromARGB(255, 116, 12, 12),
      ),
      onChanged: (int? value) {
        maestro.setIndexCatalogue(value!);
      },
      items: [
        DropdownMenuItem<int>(
          value: 0,
          child: Text(
            '  Entrada'.toUpperCase(),
            style: TextStyle(fontSize: 16),
          ),
        ),
        DropdownMenuItem<int>(
          value: 1,
          child: Text(
            '  Ato Penitencial'.toUpperCase(),
            style: TextStyle(fontSize: 16),
          ),
        ),
        DropdownMenuItem<int>(
          value: 3,
          child: Text(
            '  Aclamação'.toUpperCase(),
            style: TextStyle(fontSize: 16),
          ),
        ),
        DropdownMenuItem<int>(
          value: 4,
          child: Text(
            '  Ofertório'.toUpperCase(),
            style: TextStyle(fontSize: 16),
          ),
        ),
        DropdownMenuItem<int>(
          value: 5,
          child: Text(
            '  Santo'.toUpperCase(),
            style: TextStyle(fontSize: 16),
          ),
        ),
        DropdownMenuItem<int>(
          value: 6,
          child: Text(
            '  Comunhão'.toUpperCase(),
            style: TextStyle(fontSize: 16),
          ),
        ),
        DropdownMenuItem<int>(
          value: 7,
          child: Text(
            '  Pós Comunhão'.toUpperCase(),
            style: TextStyle(fontSize: 16),
          ),
        ),
        DropdownMenuItem<int>(
          value: 8,
          child: Text(
            '  Encerramento'.toUpperCase(),
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    ),
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
