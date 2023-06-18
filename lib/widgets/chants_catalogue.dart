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
              '${index + 1}. ${maestro.getCatalogueList[index].title}'
                  .toUpperCase(),
              style: TextStyle(fontSize: 16)),
          subtitle: Text(
            'Cântico de ${maestro.getCatalogueList[index].category}'
                .toUpperCase(),
            style: TextStyle(
              color: Color.fromARGB(255, 94, 32, 32),
            ),
          ),
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
