import 'package:diasguto/components/app_bars.dart';
import 'package:diasguto/components/home.dart';
import 'package:diasguto/pages/catalogue_page.dart';
import 'package:diasguto/pages/sheet_page.dart';
import 'package:diasguto/provider/Maestro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Maestro()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
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
        backgroundColor: const Color.fromARGB(255, 152, 226, 233),
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
        selectedItemColor: Colors.green[900],
        unselectedItemColor: const Color.fromARGB(255, 116, 12, 12),
        onTap: _onItemTapped,
      ),
    );
  }
}
