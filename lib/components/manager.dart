import 'package:diasguto/pages/politic_page.dart';
import 'package:diasguto/pages/sheet_page.dart';
import 'package:flutter/material.dart';

class Policy extends StatelessWidget {
  const Policy({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.settings,
        size: 18,
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PoliticPage()));
      },
    );
  }
}
