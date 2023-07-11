import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_scroll/text_scroll.dart';

Widget showNewMusic(context, int index) {
  Maestro maestro = Provider.of<Maestro>(context);
  return TextScroll(
    "    ${maestro.sheet[index].title}",
    velocity: Velocity(
      pixelsPerSecond: Offset(15, 0),
    ),
    delayBefore: Duration(seconds: 2),
  );
}
