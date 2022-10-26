import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tiroteio/components/texto_animado.dart';
import 'package:tiroteio/components/transicao.dart';
import 'package:tiroteio/screens/vitoria.dart';
import '../models/audio.dart';
import 'package:easy_localization/easy_localization.dart';

class Informacoes extends StatefulWidget {
  int balasP;
  int balasI;
  int vidasP;
  int vidasI;
  Informacoes(this.balasP, this.balasI, this.vidasP, this.vidasI);

  @override
  State<Informacoes> createState() => _InformacoesState();

  final player = AudioPlayer();
  final textAnimado = TextoAnimado();
}

class _InformacoesState extends State<Informacoes> {
  TextStyle style = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  TextStyle style2 = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.lightGreenAccent,
  );

  TextStyle style3 = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.redAccent,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Stack(
        children: [
          Container(
            color: Colors.blueGrey,
          ),
          widget.vidasI == 0 || widget.vidasP == 0
              ? Vitoria(
                  widget.vidasI,
                  widget.vidasP,
                  stopSom(),
                  playSom(widget.vidasI, widget.vidasP),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('${'indicador_balas_inimigo'.tr()} :  ',
                                    style: style),
                                Stack(
                                  children: [
                                    Text(
                                      widget.balasI.toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 5
                                          ..color = Colors.black,
                                      ),
                                    ),
                                    Transicao(
                                      widget: widget,
                                      color: Colors.blueAccent,
                                      valor: widget.balasI,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text('${'indicador_vidas'.tr()} :  ',
                                    style: style),
                                Stack(
                                  children: [
                                    Text(
                                      widget.vidasI.toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 4
                                          ..color = Colors.black,
                                      ),
                                    ),
                                    Transicao(
                                      widget: widget,
                                      color: Colors.redAccent,
                                      valor: widget.vidasI,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/inimigo.png',
                          scale: 6,
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('${'indicador_suas_balas'.tr()} :  ',
                                    style: style),
                                Stack(
                                  children: [
                                    Text(
                                      widget.balasP.toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 5
                                          ..color = Colors.black,
                                      ),
                                    ),
                                    Transicao(
                                      widget: widget,
                                      color: Colors.blueAccent,
                                      valor: widget.balasP,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text('${'indicador_vidas'.tr()} :  ',
                                    style: style),
                                Stack(
                                  children: [
                                    Text(
                                      widget.vidasP.toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 5
                                          ..color = Colors.black,
                                      ),
                                    ),
                                    Transicao(
                                      widget: widget,
                                      color: Colors.redAccent,
                                      valor: widget.vidasP,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/player.png',
                          scale: 2,
                        ),
                      ],
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
