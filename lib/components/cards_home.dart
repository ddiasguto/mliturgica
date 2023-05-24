import 'package:diasguto/chants/chants.dart';
import 'package:diasguto/components/chant_page.dart';
import 'package:diasguto/components/show_music.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardHome extends StatelessWidget {
  final String category;

  const CardHome(this.category);

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.music_note_rounded),
            title: Text(category),
            subtitle: Text('Cânticos de  $category'),
            tileColor: Colors.cyan[200],
            onTap: () {
              maestro.setLocalList(category);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ShowMusic()));
            },
          ),
        ],
      ),
    );
  }
}
