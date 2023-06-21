import 'package:flutter/material.dart';

Widget alreadyInSheet(context) {
  return AlertDialog(
    content:
        SizedBox(width: 120, child: Text('Este cântico já está na partitura.')),
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
