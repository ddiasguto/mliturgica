import 'package:diasguto/provider/Maestro.dart';
import 'package:diasguto/widgets/show_random_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget randomSheetDialog(context) {
  Maestro maestro = Provider.of<Maestro>(context);

  return AlertDialog(
    title: const Text(
      'Gerar nova partitura aleatoriamente?',
      style: TextStyle(color: Colors.cyan, fontSize: 18),
    ),
    content: Container(
      width: 120,
      child: Text("Os cânticos atuais serão substituídos."),
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
          maestro.randomSheet();
          showDialog<String>(
            context: context,
            builder: showRandomSheet,
          );
        },
        child: Text(
          'Gerar Nova',
          style: TextStyle(color: Colors.green[800], fontSize: 18),
        ),
      ),
    ],
  );
}
