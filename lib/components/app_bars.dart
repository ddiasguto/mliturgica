import 'package:diasguto/components/manager.dart';
import 'package:flutter/material.dart';

List<PreferredSizeWidget> appBarOptions = [
  AppBar(
    elevation: 0,
    backgroundColor: Colors.cyan[800],
    title: const Text(
      'Cânticos de Liturgia',
    ),
    actions: [Policy(), Container()],
  ),
  AppBar(
    elevation: 0,
    backgroundColor: Colors.cyan[800],
    title: const Text(
      'Partitura',
    ),
  ),
  AppBar(
    elevation: 0,
    backgroundColor: Colors.cyan[800],
    title: const Text(
      'Catálogo',
    ),
  )
];
