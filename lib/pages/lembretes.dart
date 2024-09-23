import 'package:flutter/material.dart';

class Lembretes extends StatefulWidget {
  const Lembretes({super.key});

  @override
  State<Lembretes> createState() => _LembretesState();
}

class _LembretesState extends State<Lembretes> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation: 15,
        backgroundColor: Colors.purple[50],
        title: const Text('Lembretes'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/novolembrete');
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
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: const Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 15.0),
                child: ListTile(
                  title: const Text(
                    'Lembrete - Remédio Hipertensão',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('7:45 AM'),
                  trailing: Switch(
                    value: isSwitched1,
                    onChanged: (value) {
                      setState(
                        () {
                          isSwitched1 = value;
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: const Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 15.0),
                child: ListTile(
                  title: const Text(
                    'Lembrete - Fazer um Lanche',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('10:30 AM'),
                  trailing: Switch(
                    value: isSwitched2,
                    onChanged: (value) {
                      setState(
                        () {
                          isSwitched2 = value;
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: const Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 15.0),
                child: ListTile(
                  title: const Text(
                    'Lembrete - Se Exercitar',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('2:00 PM'),
                  trailing: Switch(
                    value: isSwitched3,
                    onChanged: (value) {
                      setState(
                        () {
                          isSwitched3 = value;
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
