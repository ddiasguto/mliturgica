import 'package:diasguto/components/add_dialog.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    List<Widget> localList = maestro.getLocalList;
    int currentIndex = maestro.getCurrentIndex;
    bool isSheet = maestro.getIsSheet;

    if (!isSheet) {
      return FloatingActionButton(
        onPressed: () {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'Adicionar à Partitura?',
                style: TextStyle(color: Colors.cyan, fontSize: 18),
              ),
              content: Text(
                  "Sera adicionado como cântico de ${maestro.getCategory}"),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, 'Confirm');
                    maestro.setSheetElement(localList.elementAt(currentIndex));
                  },
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        },
        tooltip: 'Adicionar à Partitura',
        backgroundColor: Colors.cyan,
        child: const Icon(
          Icons.add,
          color: Colors.greenAccent,
        ),
      );
    } else {
      return Container();
    }
  }
}
