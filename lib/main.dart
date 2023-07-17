import 'package:diasguto/models/colors.dart';
import 'package:diasguto/pages/catalogue_page.dart';
import 'package:diasguto/pages/sheet_page.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:diasguto/provider/Manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/app_bars.dart';
import 'pages/home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Maestro()),
        ChangeNotifierProvider(create: (_) => Manager())
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
      home: MyStatefulWidget(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 68, 183, 58)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    SheetPage(),
    CataloguePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[800],
      appBar: appBarOptions.elementAt(_selectedIndex),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: cyanApp,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Partitura',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Catálogo',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: redApp,
        unselectedItemColor: Colors.black38,
        onTap: _onItemTapped,
      ),
    );
  }
}
