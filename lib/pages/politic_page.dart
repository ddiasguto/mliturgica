import 'package:diasguto/components/check_box.dart';
import 'package:diasguto/models/colors.dart';
import 'package:flutter/material.dart';

class PoliticPage extends StatefulWidget {
  const PoliticPage({super.key});

  @override
  State<PoliticPage> createState() => _PoliticPageState();
}

class _PoliticPageState extends State<PoliticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.cyan[800],
          title: const Text(
            'Informações Adicionais',
          )),
      body: Column(children: [
        ListTile(
            leading: Icon(Icons.book),
            title: Text(
              'Licenças de Código aberto'.toUpperCase(),
              style: TextStyle(
                fontSize: 16,
                color: redApp,
              ),
            )),
        ListTile(
          leading: Icon(Icons.book),
          title: Text(
            'Sobre'.toUpperCase(),
            style: TextStyle(fontSize: 16, color: redApp),
          ),
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text(
            'Política de Privacidade'.toUpperCase(),
            style: TextStyle(fontSize: 16, color: redApp),
          ),
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text(
            'Contato'.toUpperCase(),
            style: TextStyle(fontSize: 16, color: redApp),
          ),
        ),
        CheckImgHome(),
      ]),
    );
  }
}
