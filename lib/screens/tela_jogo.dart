import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiroteio/components/acoes.dart';
import 'package:tiroteio/controller/language_controller.dart';
import 'package:tiroteio/models/dados.dart';
import '../components/informacoes.dart';
import '../components/feedbacks.dart';

class TelaJogo extends StatefulWidget {
  TelaJogo();

  @override
  State<TelaJogo> createState() => _TelaJogoState();
}

class _TelaJogoState extends State<TelaJogo> {
  final Dados dados = Dados();

  SizedBox sizedbox = SizedBox(
    child: Container(
      color: Colors.black,
      height: 7,
    ),
  );

  _onPressed(String comando) {
    Timer(
      Duration(milliseconds: 400),
      () {
        setState(
          () {
            dados.calcEscolhaP(comando);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageController>();

    return Scaffold(
      body: Column(
        children: [
          Informacoes(dados.balasP, dados.balasI, dados.vidasP, dados.vidasI),
          sizedbox,
          Feedbacks(dados.round, dados.jogadaPlayer, dados.jogadaInimigo),
          sizedbox,
          Acoes(_onPressed),
        ],
      ),
    );
  }
}
