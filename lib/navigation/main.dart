import 'package:flutter/material.dart';
import 'package:flutter_app/http/screens/main_screen.dart';
import 'package:flutter_app/http/screens/second_screen.dart';


void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, initialRoute: '/', routes: {
      '/': (BuildContext context) => MainScreenWidget(),
      '/second': (BuildContext context) => SecondScreenWidget(),
    }),
  );
}
