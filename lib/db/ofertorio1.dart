import 'package:flutter/material.dart';

import '../main.dart';

class Musica extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    int index;
  }

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      index;
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
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.redAccent,
          onTap: _onItemTapped,
        ),
        body: Center(
          child: SelectionArea(
            child: Column(
              children: const <Widget>[
                Text(' '),
                Text(
                  'A TI, MEU DEUS',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Text(' '),
                Text(
                  'A Ti, meu Deus',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Elevo meu coração',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Elevo as minhas mãos',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Meu olhar, minha voz',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'A Ti, meu Deus',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Eu quero oferecer',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Meus passos e meu viver',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Meus caminhos, meu sofrer',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'A Tua ternura, Senhor, vem me abraçar',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'E a Tua bondade infinita me perdoar',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Vou ser o Teu seguidor',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'E Te dar o meu coração',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Eu quero sentir o calor, de Tuas mãos',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
