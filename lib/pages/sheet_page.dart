import 'package:diasguto/pages/show_music.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SheetPage extends StatefulWidget {
  const SheetPage({super.key});

  @override
  State<SheetPage> createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {
  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Center(
      child: Container(
        width: 300,
        height: 50,
        child: Card(
          child: InkWell(
            onTap: () {
              maestro.setLocalListToSheet();
              maestro.setIndexToZero();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ShowMusic()));
            },
            onLongPress: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 200,
                    color: const Color.fromARGB(255, 152, 226, 233),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Cântico de Entrada: ${maestro.localList[0][0]}',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 116, 12, 12),
                                  fontSize: 16)),
                          Text(
                              'Cântico de Ofertório: ${maestro.localList[1][0]}',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 116, 12, 12),
                                  fontSize: 16)),
                          Text(
                              'Cântico de Comunhão: ${maestro.localList[2][0]}',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 116, 12, 12),
                                  fontSize: 16)),
                          Text(
                              'Cântico de Encerramento: ${maestro.localList[3][0]}',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 116, 12, 12),
                                  fontSize: 16)),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            splashColor: Color.fromARGB(255, 116, 12, 12),
            focusColor: Colors.black,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Navegar Pela Partitura ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 116, 12, 12),
                    fontSize: 20,
                  ),
                ),
                Icon(
                  Icons.arrow_circle_right,
                  color: Color.fromARGB(255, 116, 12, 12),
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
