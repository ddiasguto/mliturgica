import 'package:flutter/material.dart';
import '../db/ofertorio.dart';

class ShowMusic extends StatefulWidget {
  const ShowMusic({
    super.key,
    this.category,
  });

  final String? category;
  @override
  State<ShowMusic> createState() => ShowMusicState();
}

class ShowMusicState extends State<ShowMusic> {
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
