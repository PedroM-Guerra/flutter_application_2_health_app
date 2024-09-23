import 'package:flutter/material.dart';

class Treinos extends StatefulWidget {
  const Treinos({super.key});

  @override
  State<Treinos> createState() => _TreinosState();
}

class _TreinosState extends State<Treinos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[50],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.swap_vert),
        ),
        title: const Text('Agosto'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/calendario');
              },
              icon: const Icon(Icons.today),
            ),
          )
        ],
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
                    'Treino - Bicicleta',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('02/08/2024'),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
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
                    'Treino - Musculação',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('05/08/2024'),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
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
