import 'package:diasguto/chants/chants.dart';
import 'package:diasguto/models/chant.dart';
import 'package:flutter/material.dart';


class ChantPage extends StatelessWidget {
  
  final String category;
  final List<Chant>  chant;
  
  const ChantPage(this.category, this.chant);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category),),
      body: Center(child: Column(
        children: [
          Text("Algo Aqui"),
          Text(musica1.title),
          Text(musica2.title),
          Text(musica3.title),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Voltar"))
        ],
      )),
    );
  }
}