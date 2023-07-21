import 'package:diasguto/root_widget.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Maestro()),
        //       ChangeNotifierProvider(create: (_) => Manager())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context, listen: false);
    maestro.randomContent();
    maestro.sortCatalogue();
    return MaterialApp(
      title: "Músicas Litúrgicas",
      home: RootWidget(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 68, 183, 58)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
