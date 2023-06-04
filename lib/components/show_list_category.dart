import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/Maestro.dart';
import '../widgets/chants_category.dart';
import '../widgets/my_drawer.dart';

class ShowCategory extends StatefulWidget {
  const ShowCategory({super.key});

  @override
  State<ShowCategory> createState() => ShowCategoryState();
}

class ShowCategoryState extends State<ShowCategory> {
  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Cânticos de ${maestro.category}')),
      drawer: const MyDrawer(),
      body: chantsCategory(),
    );
  }

  Widget chantsCategory() {
    Maestro maestro = Provider.of<Maestro>(context);

    return ListView.builder(
        itemCount: maestro.localList.length,
        itemBuilder: (_, index) => ListTile(
            leading: const Icon(Icons.music_note),
            title: Text('${maestro.localList[index]}'),
            iconColor: Colors.red,
            tileColor: Colors.cyan,
            selectedColor: Colors.amberAccent,
            onTap: () {
              maestro.setCurrentIndex(index);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ShowMusic()));
            }));
  }
}
