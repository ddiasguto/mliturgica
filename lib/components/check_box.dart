import 'package:diasguto/models/colors.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckHymn extends StatelessWidget {
  const CheckHymn({super.key});

  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    bool isChecked = maestro.getHasHymn;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return redApp;
      }
      return redApp;
    }

    return Checkbox(
      checkColor: Color.fromARGB(255, 0, 125, 255),
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        maestro.handleHasHymn();
      },
    );
  }
}
