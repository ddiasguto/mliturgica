import 'package:flutter/material.dart';
import '../templates/cipher.dart';

class Musica extends StatefulWidget {
  const Musica({super.key});
  @override
  State<StatefulWidget> createState() => _MusicaState();
}

class _MusicaState extends State<Musica> {
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      index;
    }

    int selectedIndex = 0;

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
          child: SelectionArea(
            child: Column(
              children: const <Widget>[
                Text(' '),
                MusicTitle(title: 'A TI MEU DEUS'),
                Cifra(cipher: '        F#m'),
                Music(cipher: 'A Ti, meu Deus elevo meu coração'),
                Cifra(cipher: '        E'),
                Music(cipher: 'Elevo as minhas mãos'),
                Cifra(cipher: '        E'),
                Music(cipher: 'Meu olhar, minha voz'),
                Music(cipher: 'A Ti, meu Deus'),
                Music(cipher: 'Eu quero oferecer'),
                Music(cipher: 'Meus passos e meu viver'),
                Music(cipher: 'Meus caminhos, meu sofrer'),
                Music(cipher: 'A Tua ternura, Senhor, vem me abraçar'),
                Music(cipher: 'E a Tua bondade infinita me perdoar'),
                Music(cipher: 'Vou ser o Teu seguidor'),
                Music(cipher: 'E Te dar o meu coração'),
                Music(cipher: 'Eu quero sentir o calor, de Tuas mãos'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
