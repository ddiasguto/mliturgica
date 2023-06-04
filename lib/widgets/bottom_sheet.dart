import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/Maestro.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Container(
      height: 200,
      color: const Color.fromARGB(255, 152, 226, 233),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Cântico de Entrada: ${maestro.sheet[0][0]}',
                style: TextStyle(
                    color: Color.fromARGB(255, 116, 12, 12), fontSize: 16)),
            Text('Cântico de Ofertório: ${maestro.sheet[1][0]}',
                style: TextStyle(
                    color: Color.fromARGB(255, 116, 12, 12), fontSize: 16)),
            Text('Cântico de Comunhão: ${maestro.sheet[2][0]}',
                style: TextStyle(
                    color: Color.fromARGB(255, 116, 12, 12), fontSize: 16)),
            Text('Cântico de Encerramento: ${maestro.sheet[3][0]}',
                style: TextStyle(
                    color: Color.fromARGB(255, 116, 12, 12), fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
