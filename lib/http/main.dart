import 'package:flutter/material.dart';
import 'package:flutter_app/http/screens/main_screen.dart';
import 'package:flutter_app/http/screens/second_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'l10n/demo_localizations.dart';
import 'model/app_routes.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (BuildContext context) => MainScreenWidget(),
        AppRoutes.second: (BuildContext context) => SecondScreenWidget(),
  },
    localizationsDelegates: [
      const DemoLocalizationsDelegate(),
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: [
      const Locale('en', ''),
      const Locale('es', ''),
    ],
    locale: Locale('en', ''),),
  );
}


