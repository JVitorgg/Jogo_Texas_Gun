import 'package:flutter/material.dart';
import 'package:tiroteio/models/audio.dart';
import 'package:easy_localization/easy_localization.dart';

class Botao extends StatelessWidget {
  String funcao;
  String icone;
  final void Function(String) funcao2;

  Botao({
    required this.funcao,
    required this.funcao2,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.black,
      color: Colors.grey,
      onPressed: () {
        if (funcao == 'acao_atirar'.tr()) {
          playAtirar();
        } else if (funcao == 'acao_recarregar'.tr()) {
          playRecarregar();
        } else if (funcao == 'acao_desviar'.tr()) {
          playDesviar();
        }
        funcao2(funcao);
      },
      child: Container(
        color: Colors.white,
        height: 100,
        width: 80,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                funcao,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                icone,
                width: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
