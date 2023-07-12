import 'package:diasguto/models/chant.dart';
import 'package:diasguto/models/colors.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buttonCipher(context) {
  Maestro maestro = Provider.of<Maestro>(context);
  List<Chant> localList = maestro.getLocalList;
  int currentIndex = maestro.getCurrentIndex;
  bool isSheet = maestro.getIsSheet;
  String str = maestro.getShowCipher ? "ON" : "OFF";
  if (localList[currentIndex].hasCypher && !isSheet) {
    return TextButton(
        onPressed: () {
          maestro.setShowCipher();
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(
                Icons.queue_music_outlined,
                color: maestro.getShowCipher ? Colors.green[200] : redApp,
              ),
            ),
            Text(
              str,
              style: TextStyle(
                  color: maestro.getShowCipher ? Colors.green[200] : redApp,
                  fontSize: 12),
            )
          ],
        ));
  } else {
    return Container();
  }
}
