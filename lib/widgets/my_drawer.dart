import 'package:diasguto/models/drawer_item.dart';
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
          drawerItem(context, 'Entrada'),
          drawerItem(context, 'Ato Penitencial'),
          drawerItem(context, 'Aclamação'),
          drawerItem(context, 'Ofertório'),
          drawerItem(context, 'Santo'),
          drawerItem(context, 'Comunhão'),
          drawerItem(context, 'Pós Comunhão'),
          drawerItem(context, 'Encerramento'),
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
