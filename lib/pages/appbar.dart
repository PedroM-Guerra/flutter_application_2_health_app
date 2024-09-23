import 'package:flutter/material.dart';
import 'package:flutter_application_2_health_app/pages/treinos.dart';
import 'package:flutter_application_2_health_app/pages/lembretes.dart';
import 'package:flutter_application_2_health_app/pages/perfil.dart';


class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  //CONTINUAR AQUI: FAZER PRIMEIRO INDEX SER TREINOS.DART, DEPOIS AJEITAR TREINOS.DART
  static const List<Widget> _widgetOptions = <Widget>[
    Treinos(),
    Lembretes(),
    Perfil(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        //elevation: 15,
        backgroundColor: Colors.purple[50],
        title: Text('Treinos'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
