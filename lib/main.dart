import 'package:flutter/material.dart';
import 'package:flutter_application_2_health_app/pages/app.dart';
import 'package:flutter_application_2_health_app/pages/calendario.dart';
import 'package:flutter_application_2_health_app/pages/novo_lembrete.dart';
import 'package:flutter_application_2_health_app/pages/novo_treino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const App(),
      routes: {
        '/novolembrete': (context) => const NovoLembrete(),
        '/novotreino': (context) => const NovoTreino(),
        '/calendario': (context) => const Calendario(),
      },
    );
  }
}
