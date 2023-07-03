import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeChant extends StatelessWidget {
  const ChangeChant({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    bool isSheet = maestro.getIsSheet;
    bool isCatalogue = maestro.getIsCatalogue;
    if (isSheet && !isCatalogue) {
      return IconButton(
        icon: Icon(
          Icons.autorenew,
          size: 30,
          color: Colors.green[900],
        ),
        onPressed: () {
          maestro.changeChant(maestro.getIndexCategory);
        },
      );
    } else {
      return Container();
    }
  }
}
