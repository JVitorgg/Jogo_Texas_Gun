import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import 'package:tiroteio/controller/language_controller.dart';

bool habilitado = true;

class Opcoes extends StatefulWidget {
  const Opcoes({super.key});

  @override
  State<Opcoes> createState() => _OpcoesState();
}

class _OpcoesState extends State<Opcoes> {
  List<Widget> sons = <Widget>[
    const Icon(
      Icons.volume_up,
    ),
    const Icon(
      Icons.volume_off,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    LanguageController controller = context.read<LanguageController>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'escolha_idioma'.tr(),
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    color: Colors.transparent,
                    disabledColor: Colors.orangeAccent,
                    onPressed: habilitado == false
                        ? () {
                            setState(() {
                              habilitado = true;
                            });
                            context.locale = Locale('pt', 'BR');
                            controller.onLanguageChanged();
                          }
                        : null,
                    child: Image.asset(
                      'assets/images/brasil.png',
                      width: 100,
                    ),
                  ),
                  MaterialButton(
                    color: Colors.transparent,
                    disabledColor: Colors.orangeAccent,
                    onPressed: habilitado == true
                        ? () {
                            setState(() {
                              habilitado = false;
                            });
                            context.locale = Locale('en', 'US');
                            controller.onLanguageChanged();
                          }
                        : null,
                    child: Image.asset(
                      'assets/images/usa.png',
                      width: 100,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                'sons'.tr(),
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.deepOrange,
          splashColor: Colors.amber,
          child: Text('retornar'.tr()),
        ),
      ),
    );
  }
}
