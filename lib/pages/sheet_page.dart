import 'package:diasguto/components/Sheet_Components/sheet_buttons.dart';
import 'package:flutter/material.dart';

class SheetPage extends StatefulWidget {
  const SheetPage({super.key});

  @override
  State<SheetPage> createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      navigateThroughSheet(context),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          generateButton(context),
          acessShared(context),
        ],
      ),
    ]);
  }
}
