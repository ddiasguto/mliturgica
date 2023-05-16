import 'package:flutter/material.dart';
import 'ofertorios.dart';

class Musica extends StatefulWidget {
  const Musica({super.key});
  @override
  State<StatefulWidget> createState() => _MusicaState();
}

class _MusicaState extends State<Musica> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    const List<Widget> offers = <Widget>[
      AtiMeuDeus(),
      MinhaVidaTemSentido(),
      EstarEmTuasMaos(),
      SeBendito()
    ];

    _onItemTapped(int index) {
      if (index == 1) {
        setState(() {
          selectedIndex++;
        });
        print(selectedIndex);
      } else {
        setState(() {
          selectedIndex--;
        });
        print(selectedIndex);
      }
    }

    return MaterialApp(
      title: 'A ti Meu Deus',
      home: Scaffold(
        appBar: AppBar(title: const Text('Ofertório')),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.cyan,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_circle_left),
              label: 'Anterior',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_circle_right),
              label: 'Próxima',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.redAccent,
          onTap: _onItemTapped,
        ),
        body: SingleChildScrollView(
          child: offers.elementAt(selectedIndex + 1),
        ),
      ),
    );
  }
}
