import 'package:diasguto/functions/shared.dart';
import 'package:diasguto/models/show_random_music.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget showRandomSheet(context) {
  Maestro maestro = Provider.of<Maestro>(context);

  return AlertDialog(
    title: const Text(
      'Novos cânticos:',
      style: TextStyle(color: Colors.cyan, fontSize: 18),
    ),
    content: SizedBox(
      width: MediaQuery.sizeOf(context).width * .75,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          showNewMusic(context, 0),
          showNewMusic(context, 1),
          showNewMusic(context, 3),
          showNewMusic(context, 4),
          showNewMusic(context, 5),
          showNewMusic(context, 6),
          showNewMusic(context, 7),
          showNewMusic(context, 8),
        ],
      ),
    ),
    actionsAlignment: MainAxisAlignment.spaceEvenly,
    actions: <Widget>[
      TextButton(
        onPressed: () {
          for (int i = 0; i < 9; i++) {
            if (i == 2) {
              continue;
            }
            persistData(i, maestro.sheet[i].title);
          }
          Navigator.pop(context, 'Cancel');
        },
        child: Text(
          'Ok',
          style: TextStyle(color: Colors.cyan[700], fontSize: 18),
        ),
      ),
      TextButton(
        onPressed: () {
          maestro.randomSheet();
        },
        child: Text(
          'Gerar nova',
          style: TextStyle(color: Colors.green[800], fontSize: 18),
        ),
      ),
    ],
  );
}
