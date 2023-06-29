import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_scroll/text_scroll.dart';

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
          TextScroll(
            "    ${maestro.sheet[0].title}",
            velocity: Velocity(
              pixelsPerSecond: Offset(15, 0),
            ),
            delayBefore: Duration(seconds: 2),
          ),
          TextScroll(
            "    ${maestro.sheet[1].title}",
            velocity: Velocity(
              pixelsPerSecond: Offset(15, 0),
            ),
            delayBefore: Duration(seconds: 2),
          ),
          TextScroll(
            "    ${maestro.sheet[2].title}",
            velocity: Velocity(
              pixelsPerSecond: Offset(15, 0),
            ),
            delayBefore: Duration(seconds: 2),
          ),
          TextScroll(
            "    ${maestro.sheet[3].title}",
            velocity: Velocity(
              pixelsPerSecond: Offset(15, 0),
            ),
            delayBefore: Duration(seconds: 2),
          ),
          TextScroll(
            "    ${maestro.sheet[4].title}",
            velocity: Velocity(
              pixelsPerSecond: Offset(15, 0),
            ),
            delayBefore: Duration(seconds: 2),
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
          'Gerar Nova',
          style: TextStyle(color: Colors.green[800], fontSize: 18),
        ),
      ),
    ],
  );
}
