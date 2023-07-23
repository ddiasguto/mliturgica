import 'package:diasguto/components/app_bars.dart';
import 'package:diasguto/models/colors.dart';
import 'package:diasguto/oracao/oracao.dart';
import 'package:flutter/material.dart';

class Oracao extends StatelessWidget {
  const Oracao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Oração do Músico Católico'.toUpperCase(),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  oracao,
                  softWrap: true,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.home,
                      size: 45,
                      color: Colors.black45,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
