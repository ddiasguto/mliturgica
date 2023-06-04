import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreviousButton extends StatelessWidget {
  const PreviousButton({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    if (maestro.getCurrentIndex > 0) {
      return const Icon(
        Icons.arrow_circle_left,
        color: Color.fromARGB(255, 60, 106, 21),
      );
    } else {
      return const Icon(
        Icons.arrow_circle_left,
        color: Colors.black12,
      );
    }
  }
}
