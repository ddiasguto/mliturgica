import 'package:diasguto/components/Sheet_Components/sheet_buttons.dart';
import 'package:diasguto/components/check_box.dart';
import 'package:diasguto/contents/quotes.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SheetPage extends StatefulWidget {
  const SheetPage({super.key});

  @override
  State<SheetPage> createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {
  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      navigateThroughSheet(context),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          generateButton(context),
          acessShared(context),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckHymn(),
          Text('Incluir hino de louvor'),
          Container(
            height: 60,
          )
        ],
      ),
      Container(
        width: 300,
        child: Quotes[maestro.getRandomQuote],
      )
    ]);
  }
}
