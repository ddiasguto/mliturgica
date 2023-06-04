import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/Maestro.dart';
import '../widgets/chants_category.dart';
import '../widgets/my_drawer.dart';

class ShowCategory extends StatefulWidget {
  const ShowCategory({super.key});

  @override
  State<ShowCategory> createState() => ShowCategoryState();
}

class ShowCategoryState extends State<ShowCategory> {
  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Cânticos de ${maestro.category}')),
      drawer: const MyDrawer(),
      body: chantsCategory(context),
    );
  }
}
