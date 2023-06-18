import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/Maestro.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cânticos na Partitura:',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        backgroundColor: Colors.cyan[800],
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close,
                color: const Color.fromARGB(255, 116, 12, 12),
              ))
        ],
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Entrada: ${maestro.getSheet[0].title}'),
            iconColor: Colors.red,
            dense: true,
            tileColor: Colors.cyan,
          ),
          ListTile(
            title: Text('Ofertório: ${maestro.getSheet[1].title}'),
            iconColor: Colors.red,
            dense: true,
            tileColor: Colors.cyan,
          ),
          ListTile(
            title: Text('Aclamação: ${maestro.getSheet[2].title}'),
            iconColor: Colors.red,
            dense: true,
            tileColor: Colors.cyan,
          ),
          ListTile(
            title: Text('Comunhão: ${maestro.getSheet[3].title}'),
            iconColor: Colors.red,
            dense: true,
            tileColor: Colors.cyan,
          ),
          ListTile(
            title: Text('Encerramento: ${maestro.getSheet[4].title}'),
            iconColor: Colors.red,
            dense: true,
            tileColor: Colors.cyan,
          ),
        ],
      ),
    );
  }
}
