import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiroteio/controller/language_controller.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tiroteio/screens/splash_screen.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.watch<LanguageController>();

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
