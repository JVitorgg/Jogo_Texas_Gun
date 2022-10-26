import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tiroteio/components/texto_animado.dart';
import 'package:tiroteio/models/audio.dart';
import 'package:tiroteio/screens/tela_jogo.dart';

class Vitoria extends StatefulWidget {
  int vidasI;
  int vidasP;

  Vitoria(this.vidasI, this.vidasP, stopSom, playSom, {super.key});

  @override
  State<Vitoria> createState() => _VitoriaState();
}

class _VitoriaState extends State<Vitoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: widget.vidasP > 0
                ? AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText('indicador_frase_vitoria'.tr(),
                          textStyle: TextoAnimado.estilo,
                          colors: TextoAnimado.vitoriaCores),
                      ColorizeAnimatedText('indicador_vitoria'.tr(),
                          textStyle: TextoAnimado.estilo,
                          colors: TextoAnimado.vitoriaCores),
                    ],
                  )
                : widget.vidasI == 0
                    ? AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText('indicador_frase_empate'.tr(),
                              textStyle: TextoAnimado.estilo,
                              colors: TextoAnimado.empateCores),
                          ColorizeAnimatedText('indicador_empate'.tr(),
                              textStyle: TextoAnimado.estilo,
                              colors: TextoAnimado.empateCores),
                        ],
                      )
                    : AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText('indicador_frase_derrota'.tr(),
                              textStyle: TextoAnimado.estilo,
                              colors: TextoAnimado.derrotaCores),
                          ColorizeAnimatedText('indicador_derrota'.tr(),
                              textStyle: TextoAnimado.estilo,
                              colors: TextoAnimado.derrotaCores),
                        ],
                      ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => TelaJogo()));
              stopSom();
            },
            child: Container(
              height: 50,
              width: 300,
              color: Colors.white,
              child: Center(child: Text('reiniciar'.tr())),
            ),
          )
        ],
      ),
    );
  }
}
