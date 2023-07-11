import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget drawerItem(context, String category) {
  Maestro maestro = Provider.of<Maestro>(context);
  return ListTile(
      leading: const Icon(Icons.music_note_outlined),
      title: Text('Cânticos de ${category.toLowerCase()}'),
      onTap: () {
        maestro.setLocalList(category);
        Navigator.pop(context);
      });
}
