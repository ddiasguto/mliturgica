import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget showRandomSheet(context) {
  Maestro maestro = Provider.of<Maestro>(context);

  return AlertDialog(
    title: const Text(
      'Novos Cânticos:',
      style: TextStyle(color: Colors.cyan, fontSize: 18),
    ),
    content: SizedBox(
      width: 120,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("    ${maestro.sheet[0].title}"),
          Text("    ${maestro.sheet[1].title}"),
          Text("    ${maestro.sheet[2].title}"),
          Text("    ${maestro.sheet[3].title}"),
          Text("    ${maestro.sheet[4].title}"),
        ],
      ),
    ),
    actionsAlignment: MainAxisAlignment.spaceEvenly,
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.pop(context, 'Cancel'),
        child: const Text(
          'Ok',
          style:
              TextStyle(color: Color.fromARGB(255, 116, 12, 12), fontSize: 18),
        ),
      ),
      TextButton(
        onPressed: () {
          maestro.randomSheet();
        },
        child: Text(
          'Gerar Nova',
          style: TextStyle(color: Colors.green[800], fontSize: 18),
        ),
      ),
    ],
  );
}
