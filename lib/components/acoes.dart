import 'package:flutter/material.dart';
import 'package:tiroteio/components/botao.dart';
import 'package:tiroteio/components/lista_botao.dart';
import 'package:tiroteio/models/audio.dart';
import 'package:easy_localization/easy_localization.dart';

import '../screens/menu2.dart';

class Acoes extends StatelessWidget {
  final void Function(String) funcao2;

  Acoes(this.funcao2);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Stack(
        children: [
          Container(
            color: Colors.deepPurple,
          ),
          Center(
            child: ListaBotao(
              [
                Botao(
                  funcao: 'acao_recarregar'.tr(),
                  funcao2: funcao2,
                  icone: 'assets/images/carregar.png',
                ),
                Botao(
                  funcao: 'acao_atirar'.tr(),
                  funcao2: funcao2,
                  icone: 'assets/images/atirar.png',
                ),
                Botao(
                  funcao: 'acao_desviar'.tr(),
                  funcao2: funcao2,
                  icone: 'assets/images/desviar.png',
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: MaterialButton(
              onPressed: () {
                stopSom();

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Menu2()));
                playMenu();
              },
              color: Colors.white,
              child: Text('acao_ir_menu'.tr()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(120, 35, 0, 0),
            child: Text(
              'escolher_jogada'.tr(),
              style: const TextStyle(fontSize: 20, color: Colors.yellow),
            ),
          ),
        ],
      ),
    );
  }
}
