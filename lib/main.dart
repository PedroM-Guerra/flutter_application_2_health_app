import 'package:flutter/material.dart';
import 'package:flutter_application_2_health_app/pages/app.dart';
import 'package:flutter_application_2_health_app/pages/lembretes.dart';
import 'package:flutter_application_2_health_app/pages/novo_lembrete.dart';



void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
      routes: {
        '/novolembrete': (context) => NovoLembrete(),
        '/lembretes': (context) => App(),
      },
    );
  }
}
