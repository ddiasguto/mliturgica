import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    if (maestro.getCurrentIndex < maestro.getLocalList.length - 1) {
      return const Icon(
        Icons.arrow_circle_right,
        color: Color.fromARGB(255, 60, 106, 21),
      );
    } else {
      return const Icon(
        Icons.arrow_circle_right,
        color: Colors.black,
      );
    }
  }
}
