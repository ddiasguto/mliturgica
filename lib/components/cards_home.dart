import 'package:diasguto/functions/navigator.dart';
import 'package:diasguto/pages/show_list_category.dart';
import 'package:diasguto/pages/show_music.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:diasguto/widgets/bottom_category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardHome extends StatelessWidget {
  final String category, img;
  final bool direct;
  final int qtd;

  const CardHome(this.category, this.img, this.direct, this.qtd);

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Container(
        width: MediaQuery.of(context).size.width * .4,
        height: MediaQuery.of(context).size.width * .46,
        color: Colors.black26,
        child: InkWell(
          onTap: () {
            maestro.setLocalList(category);
            maestro.setCatalogueFalse();
            maestro.setSheetFalse();
            if (direct) {
              maestro.setIndexToZero();
              navigator(context, ShowMusic());
            } else {
              navigator(context, ShowCategory());
            }
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 10),
              Image.asset(
                'assets/img/$img',
                width: MediaQuery.of(context).size.width * .3,
              ),
              Text(
                category.toUpperCase(),
                style: const TextStyle(
                  color: Color.fromARGB(255, 116, 12, 12),
                  fontSize: 12,
                ),
              ),
              Text('${qtd} cânticos.'),
              Container(height: 10),
            ],
          ),
        ));
  }
}

class GenericCard extends StatelessWidget {
  final String category, img;
  final direct;
  final int qtd;

  const GenericCard(this.category, this.img, this.direct, this.qtd);

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Container(
        width: MediaQuery.of(context).size.width * .4,
        height: MediaQuery.of(context).size.width * .46,
        color: Colors.black26,
        child: InkWell(
          onTap: () {
            maestro.setLocalListUncategorized(category);
            maestro.setCatalogueTrue();
            maestro.setSheetFalse();
            if (direct) {
              maestro.setIndexToZero();
              navigator(context, ShowMusic());
            } else {
              navigator(context, ShowCategory());
            }
          },
          focusColor: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 10),
              Image.asset(
                'assets/img/$img',
                width: MediaQuery.of(context).size.width * .3,
              ),
              Text(
                category.toUpperCase(),
                style: const TextStyle(
                  color: Color.fromARGB(255, 116, 12, 12),
                  fontSize: 12,
                ),
              ),
              Text('${qtd} cânticos.'),
              Container(height: 10),
            ],
          ),
        ));
  }
}
