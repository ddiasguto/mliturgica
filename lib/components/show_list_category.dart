import 'package:diasguto/components/my_drawer.dart';
import 'package:diasguto/components/show_music.dart';
import 'package:diasguto/db/ofertorio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../db/lists.dart';
import '../provider/Maestro.dart';

class ShowCategory extends StatefulWidget {
  const ShowCategory({super.key});

  @override
  State<ShowCategory> createState() => ShowCategoryState();
}

class ShowCategoryState extends State<ShowCategory> {
  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    List<Widget> localList = maestro.getLocalList;
    return Scaffold(
      appBar: AppBar(title: const Text('Cânticos de category')),
      drawer: const MyDrawer(),
      body: ListView(
        children: [Container()],
      ),
    );
/*  }

  Widget chantsCategory() {
    Maestro maestro = Provider.of<Maestro>(context);
    List<Widget> localList = maestro.getLocalList;
    for (int i = 0; i < localList.length - 1; i++) {
      return ListTile(
        leading: const Icon(Icons.music_note),
        title: Text('Cantico $i de ${maestro.getLocalList.length}'),
        iconColor: Colors.red,
        tileColor: Colors.cyan,
        selectedColor: Colors.amberAccent,
        onTap: () {
          maestro.setInitialIndex(i);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ShowMusic()));
        },
      );
    }*/
  }
}
