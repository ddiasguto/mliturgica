import 'package:diasguto/models/chant.dart';
import 'package:diasguto/models/colors.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget showCipher(context) {
  Maestro maestro = Provider.of<Maestro>(context);
  List<Chant> localList = maestro.getLocalList;
  int currentIndex = maestro.getCurrentIndex;
  if (localList[currentIndex].hasCypher) {
    return TextButton(
        onPressed: () {
          if (localList[currentIndex].hasCypher) {
            maestro.setShowCipher();
          } else {}
        },
        child: Icon(
          Icons.queue_music_outlined,
          color: maestro.getShowCipher ? redApp : Colors.green[800],
        ));
  } else {
    return Container();
  }
}
