import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiroteio/models/dados.dart';
import '../controller/language_controller.dart';

class Resultado extends StatefulWidget {
  int vidasP;
  int vidasI;

  Resultado(this.vidasP, this.vidasI, stopSom, playSom);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  Dados dados = Dados();

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageController>();

    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Text('a'),
      ),
    );
  }
}
