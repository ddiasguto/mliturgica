import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    List localList = maestro.getLocalList;
    int currentIndex = maestro.getCurrentIndex;
    bool isSheet = maestro.getIsSheet;
    int indexCategory = maestro.getIndexCategory;

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
              content: Container(
                width: 80,
                child: Text(
                    "Sera adicionado como cântico de ${maestro.getCategory}. O Cântico \"${maestro.getSheet[indexCategory][0]}\" será substituído."),
              ),
              actionsAlignment: MainAxisAlignment.spaceEvenly,
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(
                        color: Color.fromARGB(255, 116, 12, 12), fontSize: 18),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, 'Confirm');
                    maestro.setSheetElement(
                        localList[currentIndex][0], localList[currentIndex][1]);
                  },
                  child: const Text(
                    'Adicionar',
                    style: TextStyle(color: Colors.cyan, fontSize: 18),
                  ),
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
