import 'package:diasguto/models/colors.dart';
import 'package:flutter/material.dart';

void snackAdded(context) {
  final snackbar = SnackBar(
    content: const Text('Adicionado.'),
    backgroundColor: Colors.green[800],
  );
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

void snackAlready(context) {
  final snackbar = SnackBar(
    content: Row(
      children: [
        Icon(
          Icons.warning,
          color: redApp,
        ),
        const Text('Este cântico já está na partitura'),
      ],
    ),
    backgroundColor: const Color.fromARGB(255, 197, 187, 96),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}
