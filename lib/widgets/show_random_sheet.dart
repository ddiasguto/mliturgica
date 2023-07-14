import 'package:diasguto/models/colors.dart';
import 'package:diasguto/models/show_random_music.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_scroll/text_scroll.dart';

Widget showRandomSheet(context) {
  Maestro maestro = Provider.of<Maestro>(context);

  return AlertDialog(
    title: const Text(
      'Novos cânticos:',
      style: TextStyle(color: Colors.cyan, fontSize: 18),
    ),
    content: SizedBox(
      width: 120,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('  Entrada: ', style: TextStyle(color: redApp)),
              showNewMusic(context, 0),
            ],
          ),
          Row(
            children: [
              Text('  Ato penitencial: ', style: TextStyle(color: redApp)),
              showNewMusic(context, 1),
            ],
          ),
          Row(
            children: [
              Text('  Aclamação: ', style: TextStyle(color: redApp)),
              showNewMusic(context, 3),
            ],
          ),
          Row(
            children: [
              Text('  Ofertório: ', style: TextStyle(color: redApp)),
              showNewMusic(context, 4),
            ],
          ),
          Row(
            children: [
              Text('  Santo: ', style: TextStyle(color: redApp)),
              showNewMusic(context, 5),
            ],
          ),
          Row(
            children: [
              Text('  Comunhão: ', style: TextStyle(color: redApp)),
              showNewMusic(context, 6),
            ],
          ),
          Row(
            children: [
              Text('  Pós Comunhão: ', style: TextStyle(color: redApp)),
              showNewMusic(context, 7),
            ],
          ),
          Row(
            children: [
              Text('  Encerramento: ', style: TextStyle(color: redApp)),
              showNewMusic(context, 8),
            ],
          ),
        ],
      ),
    ),
    actionsAlignment: MainAxisAlignment.spaceEvenly,
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.pop(context, 'Cancel'),
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
