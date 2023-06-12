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
          title: Text(
              ' ${index + 1}. ${maestro.getCatalogueList[index][0]}'
                  .toUpperCase(),
              style: TextStyle(fontSize: 16)),
          dense: true,
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
