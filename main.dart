import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/bleHandler.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/apiHandler.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
      appBarTheme: AppBarTheme(foregroundColor: Colors.black, elevation: 4.0, shadowColor: Colors.black,),
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/ble': (context) => Blehandler(),
      '/api': (context) => ApiHandler(),
    },

  )); 
}
