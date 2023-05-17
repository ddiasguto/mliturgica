import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class PoliticPage extends StatefulWidget {
  const PoliticPage({super.key});

  @override
  State<PoliticPage> createState() => _PoliticPageState();
}

class _PoliticPageState extends State<PoliticPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Politica'));
  }
}
