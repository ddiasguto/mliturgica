import 'package:diasguto/chants/chants.dart';
import 'package:diasguto/components/chant_page.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {

  final String category;

  const CardHome(this.category);

  @override
  Widget build(BuildContext context) {

    var chantList = [musica1,musica2,musica3];

    return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: Text(category),
              subtitle: Text('Cânticos de  $category'),
              tileColor: Colors.cyan,   
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ChantPage(category, chantList)));
              },
            ),
          ],
        ),
      );
  }
}