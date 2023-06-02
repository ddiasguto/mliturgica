import 'package:diasguto/components/show_music.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardHome extends StatelessWidget {
  final String category;

  const CardHome(this.category);

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      dense: true,
      leading: const Icon(
        Icons.music_note_rounded,
        color: Colors.black,
      ),
      title: Text(category),
      subtitle: Text('Cânticos de  $category'),
      tileColor: Colors.cyan[200],
      onTap: () {
        maestro.setLocalList(category);
        maestro.setIndexToZero();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ShowMusic()));
      },
    );
  }
}
