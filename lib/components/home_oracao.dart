import 'package:diasguto/functions/navigator.dart';
import 'package:diasguto/models/colors.dart';
import 'package:diasguto/pages/oracao_page.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget navigateToOration(context) {
  return Container(
    width: MediaQuery.sizeOf(context).width * .6,
    height: 45,
    child: Card(
      child: InkWell(
        onTap: () => navigator(context, Oracao()),
        splashColor: redApp,
        focusColor: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Oração do músico católico'.toUpperCase(),
              style: TextStyle(
                color: redApp,
                fontSize: 12,
              ),
            ),
            Icon(
              Icons.arrow_circle_right,
              color: redApp,
              size: 15,
            ),
          ],
        ),
      ),
    ),
  );
}
