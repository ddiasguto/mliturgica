import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/show_music.dart';

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
