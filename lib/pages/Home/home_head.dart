import 'package:diasguto/contents/home_img.dart';
import 'package:diasguto/models/legend_home.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeHead extends StatelessWidget {
  const HomeHead({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    int randomImg = maestro.getRandomImg;
    return Container(
      color: maestro.removeImgHome ? Colors.cyan[800] : Colors.black38,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: maestro.removeImgHome
              ? [Container()]
              : [
                  imgHome[randomImg],
                  imgHome[randomImg].hasLegend
                      ? LegendHome(description: putLegend(imgHome[randomImg]))
                      : Container()
                ],
        ),
      ),
    );
  }
}
