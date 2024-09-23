import 'package:flutter/material.dart';


void main() => runApp(const Treinos());

class Treinos extends StatelessWidget {
  const Treinos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const TreinosState(),
    );
  }
}

class TreinosState extends StatelessWidget {
  const TreinosState({super.key});

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
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Color.fromRGBO(218,209,209, 100),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
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
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
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
