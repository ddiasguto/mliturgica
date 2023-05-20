import 'package:flutter/material.dart';
import 'ofertorio.dart';

class Musica extends StatefulWidget {
  const Musica({super.key});
  @override
  State<Musica> createState() => MusicaState();
}

class MusicaState extends State<Musica> {
  @override
  int _selectedIndex = 0;
  Widget build(BuildContext context) {
    const List<Widget> offers = <Widget>[
      AtiMeuDeus(),
      MinhaVidaTemSentido(),
      EstarEmTuasMaos(),
      SeBendito()
    ];

    _onItemTapped(int index) {
      if (index == 1 && _selectedIndex < offers.length - 1) {
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

    return Scaffold(
      appBar: AppBar(title: const Text('Ofertório')),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_circle_left),
            label: 'Anterior',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_circle_right),
            label: 'Próxima',
          ),
        ],
        selectedItemColor: Colors.redAccent,
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: offers.elementAt(_selectedIndex),
      ),
    );
  }
}
