import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/Maestro.dart';

class CategoryBottomSheet extends StatelessWidget {
  const CategoryBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Cânticos de ${maestro.getCategory}:',
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
        body: ListView.builder(
            itemCount: maestro.localList.length,
            itemBuilder: (_, index) => ListTile(
                  leading: const Icon(Icons.music_note),
                  title: Text('${maestro.getLocalList[index][0]}'),
                  iconColor: Colors.red,
                  tileColor: Colors.cyan,
                )));
  }
}
