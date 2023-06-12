import 'package:diasguto/pages/show_music.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:diasguto/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/random_sheet_dialog.dart';

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
      child: Column(children: [
        Container(
          width: 300,
          height: 45,
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
                    return MyBottomSheet();
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
        Container(
          width: 300,
          height: 45,
          child: Card(
            child: InkWell(
              onTap: () {
                showDialog<String>(
                  context: context,
                  builder: randomSheetDialog,
                );
              },
              splashColor: Color.fromARGB(255, 116, 12, 12),
              focusColor: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gerar Nova',
                    style: TextStyle(
                      color: Colors.green[800],
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.refresh,
                    color: Colors.green[800],
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
