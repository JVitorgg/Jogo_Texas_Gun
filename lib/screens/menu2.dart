import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiroteio/controller/language_controller.dart';
import 'package:tiroteio/controller/placar_controller.dart';
import 'package:tiroteio/models/audio.dart';
import 'package:tiroteio/screens/guia.dart';
import 'package:tiroteio/screens/historico.dart';
import 'package:tiroteio/screens/opcoes.dart';
import 'package:tiroteio/screens/tela_jogo.dart';

class Menu2 extends StatelessWidget {
  Menu2({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageController>();
    context.watch<PlacarController>();

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.black, Colors.black, Colors.orangeAccent],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/texas.jpg',
              width: 250,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 63, 62, 62), width: 6),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.grey, Colors.white, Colors.grey],
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        playPrincipal();

                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TelaJogo()));
                      },
                      minWidth: 300,
                      height: 60,
                      child: Text(
                        'novo_jogo'.tr(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 63, 62, 62), width: 6),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.grey, Colors.white, Colors.grey],
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Guia()));
                      },
                      minWidth: 300,
                      height: 60,
                      child: Text(
                        'como_jogar'.tr(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 63, 62, 62), width: 6),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.grey, Colors.white, Colors.grey],
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        playAtirar;
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Opcoes()));
                      },
                      minWidth: 300,
                      height: 60,
                      child: Text(
                        'opcoes'.tr(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 63, 62, 62), width: 6),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.grey, Colors.white, Colors.grey],
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        playAtirar;
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Historico()));
                      },
                      minWidth: 300,
                      height: 60,
                      child: Text(
                        'resultado'.tr(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
