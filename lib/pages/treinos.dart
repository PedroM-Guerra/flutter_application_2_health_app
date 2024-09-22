import 'package:flutter/material.dart';

/// Flutter code sample for [ListTile].

void main() => runApp(const ListTileApp());

class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const ListTileExample(),
    );
  }
}

class ListTileExample extends StatelessWidget {
  const ListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[50],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.swap_vert),
        ),
        title: const Text('Agosto'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.today),
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Card(
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ListTile(
                  title: Text(
                    'Treino - Bicicleta',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('02/08/2024'),
                  trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert),)
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Card(
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ListTile(
                  title: Text(
                    'Treino - Musculação',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('05/08/2024'),
                    trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert),)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
