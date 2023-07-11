import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Drawer(
      shadowColor: Colors.amber,
      backgroundColor: Colors.cyan[200],
      child: ListView(
        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
        children: <Widget>[
          ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text('Cânticos de Entrada'),
              onTap: () {
                maestro.setLocalList('Entrada');
                Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text('Ato Penitencial'),
              onTap: () {
                maestro.setLocalList('Ato Penitencial');
                Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text('Aclamação'),
              onTap: () {
                maestro.setLocalList('Aclamação');
                Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text('Cânticos de Ofertório'),
              onTap: () {
                maestro.setLocalList('Ofertório');
                Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text('Santo'),
              onTap: () {
                maestro.setLocalList('Santo');
                Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text('Cânticos de Comunhão'),
              onTap: () {
                maestro.setLocalList('Comunhão');
                Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text('Cânticos de Pós Comunhão'),
              onTap: () {
                maestro.setLocalList('Pós Comunhão');
                Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text('Cânticos Finais'),
              onTap: () {
                maestro.setLocalList('Encerramento');
                Navigator.pop(context);
              }),
          Divider(),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Página Inicial'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
