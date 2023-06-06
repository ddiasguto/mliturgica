import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget alreadyInSheet(context) {
  Maestro maestro = Provider.of<Maestro>(context);
  int indexCategory = maestro.getIndexCategory;
  return AlertDialog(
    content: Container(
        width: 120,
        child: Text(
            'O cântico "${maestro.getSheet[indexCategory][0]}" já está na partitura.')),
    actionsAlignment: MainAxisAlignment.spaceEvenly,
    actions: <Widget>[
      TextButton(
        onPressed: () {
          Navigator.pop(context, 'Confirm');
        },
        child: const Text(
          'OK',
          style: TextStyle(color: Colors.cyan, fontSize: 18),
        ),
      ),
    ],
  );
}
