import 'package:flutter/material.dart';

class TextoAnimado {
  static const vitoriaCores = [
    Color.fromARGB(255, 0, 255, 17),
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 41, 0, 0),
  ];

  static const derrotaCores = [
    Color.fromARGB(255, 255, 0, 0),
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 41, 0, 0),
  ];

  static const empateCores = [
    Color.fromARGB(255, 250, 250, 250),
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 41, 0, 0),
  ];

  static const estilo = TextStyle(
    fontSize: 30.0,
    fontFamily: 'Horizon',
    fontWeight: FontWeight.bold,
  );

  transicao() {
    AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SlideTransition(
          position: Tween<Offset>(
                  begin: const Offset(0.0, -0.5), end: const Offset(0.0, 0.0))
              .animate(animation),
          child: child,
        );
      },
    );
  }
}
