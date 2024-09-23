import 'package:flutter/material.dart';
import 'package:flutter_application_2_health_app/pages/treinos.dart';

class AppbarTreinos extends StatefulWidget {
  const AppbarTreinos({super.key});

  @override
  State<AppbarTreinos> createState() => _AppState();
}

class _AppState extends State<AppbarTreinos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        //elevation: 15,
        backgroundColor: Colors.purple[50],
        title: const Text('Treinos'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/novotreino');
              },
              icon: const Icon(Icons.add),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Configurações'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Sobre'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Ajuda'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Treinos(),
      ),
    );
  }
}
