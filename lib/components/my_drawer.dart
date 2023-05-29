import 'package:diasguto/components/show_list_category.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Drawer(
      backgroundColor: Colors.cyan[200],
      child: ListView(
        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
        children: <Widget>[
          ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text('Cânticos de Entrada'),
              onTap: () {
                maestro.setLocalList('Entrada');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShowCategory()));
              }),
          ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text('Cânticos de Ofertório'),
              onTap: () {
                maestro.setLocalList('Ofertório');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShowCategory()));
              }),
          ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text('Cânticos de Comunhão'),
              onTap: () {
                maestro.setLocalList('Comunhão');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShowCategory()));
              }),
          ListTile(
              leading: const Icon(Icons.music_note_outlined),
              title: const Text('Cânticos Finais'),
              onTap: () {
                maestro.setLocalList('Final');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShowCategory()));
              }),
        ],
      ),
    );
  }
}
