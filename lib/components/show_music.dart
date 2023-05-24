import 'package:diasguto/db/lists.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../db/ofertorio.dart';
import '../provider/Maestro.dart';
import '../db/lists.dart';

class ShowMusic extends StatefulWidget {
  const ShowMusic({
    super.key,
  });

  @override
  State<ShowMusic> createState() => ShowMusicState();
}

class ShowMusicState extends State<ShowMusic> {
  int _selectedIndex = 0;
  _onItemTapped(int index) {
    Maestro maestro = Provider.of<Maestro>(context, listen: false);
    if (index == 1 && _selectedIndex < maestro.getLocalList.length - 1) {
      setState(() {
        _selectedIndex++;
      });
      print(_selectedIndex);
    } else if (index == 0 && _selectedIndex > 0) {
      setState(() {
        _selectedIndex--;
      });
      print(_selectedIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    Maestro maestro = Provider.of<Maestro>(context);
    List<Widget> localList = maestro.getLocalList;

    return Scaffold(
      appBar: AppBar(
          title: Text('Musica ${_selectedIndex + 1}/${localList.length}')),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.arrow_circle_left),
            label: 'Anterior',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.arrow_circle_right),
            label: 'Próxima',
          ),
        ],
        selectedItemColor: Colors.redAccent,
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: localList.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onItemTapped(2),
        tooltip: 'Adicionar à Partitura',
        child: const Icon(
          Icons.add,
          color: Colors.greenAccent,
        ),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}