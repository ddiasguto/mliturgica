import 'package:diasguto/components/manager.dart';
import 'package:flutter/material.dart';

const blackApp = Colors.black12;

List<PreferredSizeWidget> appBarOptions = [
  AppBar(
    elevation: 0,
    backgroundColor: blackApp,
    title: const Text(
      'Cânticos de Liturgia',
    ),
    actions: [Policy(), Container()],
  ),
  AppBar(
    elevation: 0,
    backgroundColor: blackApp,
    title: const Text(
      'Partitura',
    ),
  ),
  AppBar(
    elevation: 0,
    backgroundColor: blackApp,
    title: const Text(
      'Catálogo',
    ),
  )
];
