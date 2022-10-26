import 'package:audioplayers/audioplayers.dart';

final principal = AudioPlayer();
final efeitos = AudioPlayer();

playSom(int vidasI, int vidasP) {
  if (vidasI == 0 && vidasP > 0) {
    principal.play(AssetSource('audios/vitoria.mp3'), volume: 1);
  } else if (vidasI == 0 && vidasP == 0) {
    principal.play(AssetSource('audios/vitoria.mp3'), volume: 1);
  } else if (vidasI > 0 && vidasP == 0) {
    principal.play(AssetSource('audios/derrota.mp3'), volume: 1);
  }
}

stopSom() {
  principal.stop();
}

playMenu() {
  principal.play(
    AssetSource('audios/menu.mp3'),
    volume: 1,
  );
}

playPrincipal() {
  principal.play(
    AssetSource('audios/principal.mp3'),
    volume: 2,
  );
}

playAtirar() {
  efeitos.play(
    AssetSource('audios/atirar.mp3'),
    volume: 10,
  );
}

playRecarregar() {
  efeitos.play(
    AssetSource('audios/recarregar.mp3'),
    volume: 10,
  );
}

playDesviar() {
  efeitos.play(
    AssetSource('audios/desviar.mp3'),
    volume: 10,
  );
}
