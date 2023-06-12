import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeChant extends StatelessWidget {
  const ChangeChant({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    bool isSheet = maestro.getIsSheet;

    if (isSheet) {
      return IconButton(
        icon: Icon(
          Icons.refresh,
          size: 30,
          color: Colors.blue[100],
        ),
        onPressed: () {
          maestro.changeChant(maestro.indexCategory);
        },
      );
    } else {
      return Container();
    }
  }
}
