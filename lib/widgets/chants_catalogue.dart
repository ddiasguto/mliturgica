import 'package:diasguto/db/lists.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/show_music.dart';

Widget chantsCatalogue(context) {
  Maestro maestro = Provider.of<Maestro>(context);

  return ListView.builder(
      itemCount: maestro.catalogueList.length,
      itemBuilder: (_, index) => ListTile(
          leading: const Icon(Icons.music_note),
          title: Text('${maestro.getCatalogueList[index][0]}'),
          dense: true,
          iconColor: Colors.red,
          tileColor: Colors.cyan[400],
          selectedColor: Colors.amberAccent,
          onTap: () {
            maestro.setLocalListToCatalogue();
            maestro.setCurrentIndex(index);
            maestro.setCatalogueTrue();

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ShowMusic()));
          }));
}
