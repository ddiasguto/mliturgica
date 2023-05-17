import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class SheetPage extends StatefulWidget {
  const SheetPage({super.key});

  @override
  State<SheetPage> createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Partitura'));
  }
}
