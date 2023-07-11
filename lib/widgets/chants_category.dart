import 'package:diasguto/models/colors.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/show_music.dart';

Widget chantsCategory(context) {
  Maestro maestro = Provider.of<Maestro>(context);

  return ListView.builder(
      itemCount: maestro.localList.length,
      itemBuilder: (_, index) => ListTile(
          leading: const Icon(Icons.music_note),
          title: Text(maestro.localList[index].title),
          iconColor: redApp,
          tileColor: Colors.cyan,
          trailing: Icon(Icons.queue_music_outlined,
              color: maestro.localList[index].hasCypher
                  ? Colors.green[800]
                  : Colors.black26),
          selectedColor: Colors.amberAccent,
          onTap: () {
            maestro.setCurrentIndex(index);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ShowMusic()));
          }));
}
