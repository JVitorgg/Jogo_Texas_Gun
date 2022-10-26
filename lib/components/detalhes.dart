import 'package:flutter/material.dart';

Widget detalhes(String resultado, int turnos, String data) {
  return Card(
    elevation: 5,
    child: Padding(
      padding: const EdgeInsets.all(7),
      child: Stack(children: <Widget>[
        Align(
          alignment: Alignment.centerRight,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            resultado,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text('Turnos :$turnos'),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        const Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text('Data :$data'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    ),
  );
}
