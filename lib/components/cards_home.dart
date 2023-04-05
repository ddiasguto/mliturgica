import 'package:diasguto/chants/chants.dart';
import 'package:diasguto/components/chant_page.dart';
import 'package:diasguto/db/ofertorio1.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  final String category;
  final int index;

  const CardHome(this.category, this.index);

  @override
  Widget build(BuildContext context) {
    var chantList = [musica1, musica2, musica3];

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text(category),
            subtitle: Text('Cânticos de  $category Indice: ${index * 3}'),
            tileColor: Colors.cyan[200],
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Musica()));
            },
          ),
        ],
      ),
    );
  }
}
