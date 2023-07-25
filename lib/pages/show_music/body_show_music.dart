import 'package:diasguto/models/chant.dart';
import 'package:diasguto/models/colors.dart';
import 'package:diasguto/pages/show_music/category_at_music.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget bodyShowMusic(BuildContext context) {
  Maestro maestro = Provider.of<Maestro>(context);
  List<Chant> localList = maestro.getLocalList;
  bool showCipher = maestro.getShowCipher;
  int currentIndex = maestro.getCurrentIndex;
  return Column(children: [
    LinearProgressIndicator(
        backgroundColor: redApp,
        color: Colors.green[800],
        value: (maestro.currentIndex + 1) / maestro.localList.length),
    categoryAtMusic(context),
    Expanded(
        child: ListView(
            children: localList[currentIndex].hasCypher
                ? (showCipher
                    ? localList[currentIndex].ciphers
                    : localList[currentIndex].lyrics)
                : localList[currentIndex].lyrics)),
  ]);
}
