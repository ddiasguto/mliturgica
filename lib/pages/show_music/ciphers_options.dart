import 'package:diasguto/models/colors.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:diasguto/widgets/already_in_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget cipherOptions(BuildContext context) {
  Maestro maestro = Provider.of<Maestro>(context);
  bool showCipher = maestro.getShowCipher;

  return !maestro.localList[currentIndex].hasCypher
      ? Container()
      : (showCipher
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cipherButtonOption(context, 'C'),
                cipherButtonOption(context, 'D'),
                cipherButtonOption(context, 'E'),
                cipherButtonOption(context, 'F'),
                cipherButtonOption(context, 'G'),
                cipherButtonOption(context, 'A'),
                cipherButtonOption(context, 'B')
              ],
            )
          : Container());
}

Widget cipherButtonOption(context, String tom) {
  Maestro maestro = Provider.of<Maestro>(context);
  return Padding(
    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
    child: InkWell(
      onTap: () {
        maestro.setTom(tom);
      },
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * .12,
        height: MediaQuery.sizeOf(context).width * .08,
        child: Card(
          color: maestro.getTom == tom ? greenApp : redApp,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tom,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
