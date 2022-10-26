import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Feedbacks extends StatelessWidget {
  int round;
  String jogadaPlayer;
  String jogadaInimigo;
  TextStyle style = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  Feedbacks(this.round, this.jogadaPlayer, this.jogadaInimigo);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        height: 150,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('${'indicador_turno'.tr()} $round', style: style),
              Text(jogadaPlayer, style: style),
              Text(jogadaInimigo, style: style),
            ],
          ),
        ),
      ),
    );
  }
}
