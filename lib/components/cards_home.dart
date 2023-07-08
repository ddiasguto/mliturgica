import 'package:diasguto/pages/show_list_category.dart';
import 'package:diasguto/pages/show_music.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:diasguto/widgets/bottom_category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardHome extends StatelessWidget {
  final String category, img;

  const CardHome(this.category, this.img);

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
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/img/$img'),
              ),
              InkWell(
                onTap: () {
                  maestro.setLocalList(category);
                  maestro.setCatalogueFalse();
                  maestro.setSheetFalse();
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
                      category.toUpperCase(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 116, 12, 12),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  final String category, img;

  const Card2(this.category, this.img);

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Container(
      height: 50,
      child: Container(
        width: MediaQuery.of(context).size.width * .4,
        child: Card(
          color: Colors.cyan[200],
          shadowColor: const Color.fromARGB(255, 116, 12, 12),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/img/$img'),
              ),
              InkWell(
                onTap: () {
                  maestro.setHymnToLocalist();
                  maestro.setCatalogueTrue();
                  maestro.setSheetFalse();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ShowMusic()));
                },
                focusColor: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        category.toUpperCase(),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 116, 12, 12),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
