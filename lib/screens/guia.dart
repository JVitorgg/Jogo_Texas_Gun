import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'menu2.dart';

class Guia extends StatelessWidget {
  const Guia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'como_jogar'.tr(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'guia_1'.tr(),
                maxLines: 3,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: (10 / 2),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  Container(
                    color: Colors.white,
                    height: 10,
                    child: Center(
                      child: Text(
                        'acao_recarregar'.tr(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'guia_2'.tr(),
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 10,
                    child: Center(
                      child: Text(
                        'acao_atirar'.tr(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'guia_3'.tr(),
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'acao_desviar'.tr(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'guia_4'.tr(),
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Menu2()),
              );
            },
            backgroundColor: Colors.deepOrange,
            splashColor: Colors.amber,
            child: Text('retornar'.tr()),
          ),
        ));
  }
}


// Text(
              //   'guia_1'.tr(),
              //   style: const TextStyle(color: Colors.white),
              // ),
              // Text(
              //   'guia_2'.tr(),
              //   style: const TextStyle(color: Colors.white),
              // ),
              // Text(
              //   'guia_3'.tr(),
              //   style: const TextStyle(color: Colors.white),
              // ),
              // Text(
              //   'guia_4'.tr(),
              //   style: const TextStyle(color: Colors.white),
              // ),