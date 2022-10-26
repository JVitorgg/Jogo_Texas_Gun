import 'package:flutter/material.dart';
import 'package:tiroteio/components/informacoes.dart';

class Transicao extends StatelessWidget {
  Transicao({
    required this.widget,
    required this.color,
    required this.valor,
  });

  final Informacoes widget;
  final Color color;
  final int valor;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SlideTransition(
          position: Tween<Offset>(
                  begin: const Offset(0.0, -0.5), end: const Offset(0.0, 0.0))
              .animate(animation),
          child: child,
        );
      },
      child: Text(
        valor.toString(),
        key: ValueKey<String>(valor.toString()),
        style: TextStyle(fontSize: 25, color: color),
      ),
    );
  }
}
