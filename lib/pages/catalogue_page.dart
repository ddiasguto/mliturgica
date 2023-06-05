import 'package:diasguto/widgets/chants_catalogue.dart';
import 'package:flutter/material.dart';

class CataloguePage extends StatefulWidget {
  const CataloguePage({super.key});

  @override
  State<CataloguePage> createState() => _CataloguePageState();
}

class _CataloguePageState extends State<CataloguePage> {
  @override
  Widget build(BuildContext context) {
    return chantsCatalogue(context);
  }
}
