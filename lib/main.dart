import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tiroteio/controller/language_controller.dart';
import 'package:tiroteio/controller/placar_controller.dart';
import 'package:tiroteio/screens/menu.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LanguageController(),
        ),
        ChangeNotifierProvider(
          create: (_) => PlacarController(),
        ),
      ],
      child: EasyLocalization(
          supportedLocales: [Locale('en', 'US'), Locale('pt', 'BR')],
          path:
              'assets/translations', // <-- change the path of the translation files
          fallbackLocale: Locale('en', 'US'),
          child: Menu()),
    ),
  );
}
