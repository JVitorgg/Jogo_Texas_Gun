import 'package:flutter/material.dart';
import 'package:tiroteio/components/botao.dart';

class ListaBotao extends StatelessWidget {
  final List<Botao> listBotao;

  ListaBotao(this.listBotao);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: listBotao,
    );
  }
}
