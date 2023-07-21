import 'package:diasguto/pages/Home/home_body.dart';
import 'package:diasguto/pages/Home/home_head.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHead(),
        HomeBody(),
      ],
    );
  }
}
