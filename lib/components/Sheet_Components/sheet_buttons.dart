import 'package:diasguto/pages/show_music.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../widgets/bottom_sheet.dart';
import '../../widgets/random_sheet_dialog.dart';

Widget generateButton(context) {
  return Container(
    width: 150,
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
              'Gerar nova',
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
  );
}

Widget acessShared(context) {
  return Container(
    width: 150,
    height: 45,
    child: Card(
      child: InkWell(
        onTap: () {
          /*Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ShowMusic()));*/
        },
        splashColor: Color.fromARGB(255, 116, 12, 12),
        focusColor: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Acessar ',
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.cloud_sync,
              color: Colors.blue[800],
              size: 30,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget navigateThroughSheet(context) {
  Maestro maestro = Provider.of<Maestro>(context);

  return Container(
    width: 300,
    height: 45,
    child: Card(
      child: InkWell(
        onTap: () {
          maestro.setLocalListToSheet();
          maestro.setIndexToZero();
          maestro.setCatalogueFalse();
          maestro.setSheetTrue();
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
              'Navegar pela partitura ',
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
  );
}
