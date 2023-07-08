import 'package:diasguto/models/colors.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/show_music.dart';

Widget chantsCatalogue(context) {
  Maestro maestro = Provider.of<Maestro>(context);

  return ListView.builder(
      itemCount: maestro.catalogueList.length,
      itemBuilder: (_, index) => ListTile(
          leading: Text(
            '${index + 1}',
            style: TextStyle(fontSize: 22),
          ),
          title: Text('${maestro.getCatalogueList[index].title}'.toUpperCase(),
              style: TextStyle(fontSize: 16)),
          subtitle: Text(
            '${maestro.getCatalogueList[index].category}'.toUpperCase(),
            style: TextStyle(
              color: redApp,
            ),
          ),
          tileColor: Colors.cyan[400],
          selectedColor: Colors.amberAccent,
          onTap: () {
            maestro.setLocalListToCatalogue();
            maestro.setCurrentIndex(index);
            maestro.setCatalogueTrue();
            maestro.setSheetFalse();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ShowMusic()));
          }));
}
