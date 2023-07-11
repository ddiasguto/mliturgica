import 'package:diasguto/functions/navigator.dart';
import 'package:diasguto/models/colors.dart';
import 'package:diasguto/pages/oracao_page.dart';
import 'package:flutter/material.dart';

Widget sentOration(context) {
  return Container(
      width: 150,
      height: 45,
      child: Card(
          child: InkWell(
              onTap: () {
                navigator(context, Oracao());
              },
              splashColor: redApp,
              focusColor: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Oração',
                    style: TextStyle(
                      color: Colors.green[800],
                      fontSize: 20,
                    ),
                  )
                ],
              ))));
}
