import 'package:flutter/material.dart';
import 'package:tiroteio/components/detalhes.dart';

class Historico extends StatefulWidget {
  const Historico({super.key});

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  final List<int> turnoss = <int>[];
  final List<String> resultados = <String>[];
  final List<String> datas = <String>[];

  void addNovoResult(String result, int turnos, DateTime dataAtual) {
    setState(() {
      if (resultados.length >= 20) {
        resultados.remove(resultados[9]);
        turnoss.remove(turnoss[9]);
        datas.remove(datas[9]);
      }

      resultados.insert(0, result);
      turnoss.insert(0, turnos);
      datas.insert(0,
          '${dataAtual.day}/${dataAtual.month}/${dataAtual.year} || ${dataAtual.hour}:${dataAtual.minute}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'RESULTADOS RECENTES',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          MaterialButton(
            onPressed: () {
              addNovoResult('VITÓRIA', 10, DateTime.now());
            },
            child: const Text(
              'Adicionar',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            color: Colors.orangeAccent,
            height: 599,
            child: resultados.isNotEmpty
                ? ListView.builder(
                    itemCount: resultados.length,
                    itemBuilder: (BuildContext context, int index) {
                      return detalhes(
                          resultados[index], turnoss[index], datas[index]);
                    },
                  )
                : const Center(
                    child: Text(
                      'Você ainda não jogou partidas',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
