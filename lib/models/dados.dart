import 'dart:math';
import 'package:easy_localization/easy_localization.dart';

class Dados {
  int _balasP = 0;
  int _balasI = 0;
  int _vidasP = 5;
  int _vidasI = 5;
  int _round = 1;
  String _jogadaPlayer = 'partida_começando'.tr();
  String _jogadaInimigo = '';

  void calcEscolhaP(String comando) {
    if (calcEscolhaI() == 'Atirou' && comando != 'acao_desviar'.tr()) {
      _vidasP -= 1;
    }
    if (comando == 'acao_recarregar'.tr()) {
      _balasP += 1;
      _jogadaPlayer = 'escolheu_recarregar'.tr();
    } else if (comando == 'acao_atirar'.tr()) {
      if (balasP < 1) {
        _jogadaPlayer = 'atirou_sem_bala'.tr();
      } else {
        _balasP -= 1;
        _jogadaPlayer = 'escolheu_atirar'.tr();
        if (calcEscolhaI() != 'Desviou') {
          _vidasI -= 1;
        }
      }
    } else if (comando == 'acao_desviar'.tr()) {
      _jogadaPlayer = 'escolheu_desviar'.tr();
    }
    _round += 1;
  }

  String calcEscolhaI() {
    int random = Random().nextInt(3);
    if (random == 0) {
      _jogadaInimigo = 'inimigo_carregou'.tr();
      _balasI += 1;
      return 'Recarregou';
    } else if (random == 1) {
      _jogadaInimigo = 'inimigo_desviou'.tr();
      return 'Desviou';
    } else if (random == 2 && balasI > 0) {
      _jogadaInimigo = 'inimigo_atirou'.tr();
      _balasI -= 1;
      return 'Atirou';
    } else {
      calcEscolhaI();
    }
    return '';
  }

  int get balasP {
    return _balasP;
  }

  int get round {
    return _round;
  }

  String get jogadaPlayer {
    return _jogadaPlayer;
  }

  String get jogadaInimigo {
    return _jogadaInimigo;
  }

  int get balasI {
    return _balasI;
  }

  int get vidasP {
    return _vidasP;
  }

  int get vidasI {
    return _vidasI;
  }
}
