import 'package:diasguto/pages/show_list_category.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:diasguto/widgets/bottom_category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardHome extends StatelessWidget {
  final String category;

  const CardHome(this.category);

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Container(
      height: 50,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.1,
        child: Card(
          color: Colors.cyan[200],
          shadowColor: const Color.fromARGB(255, 116, 12, 12),
          child: InkWell(
            onTap: () {
              maestro.setLocalList(category);
              maestro.setIndexToZero();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ShowCategory()));
            },
            onLongPress: () {
              maestro.setLocalList(category);
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return CategoryBottomSheet();
                },
              );
            },
            focusColor: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  category,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 116, 12, 12),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
