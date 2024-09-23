import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation: 15,
        backgroundColor: Colors.purple[50],
        title: const Text('Perfil'),
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
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: const Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                child: ListTile(
                  title: const Text(
                    'Peso',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixText: 'Kg',
                      hintText: '75,30 Kg',
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: const Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                child: ListTile(
                  title: const Text(
                    'Altura',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const TextField(
                    decoration: InputDecoration(
                      suffixText: 'm',
                      border: InputBorder.none,
                      hintText: '1,80 m',
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                child: ListTile(
                  title: Text(
                    'IMC',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('------'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: const Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                child: ListTile(
                  title: const Text(
                    'Idade',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '22 anos',
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: const Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                child: ListTile(
                  title: const Text(
                    'Sexo',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masculino',
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
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
