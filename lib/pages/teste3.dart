
import 'package:flutter/material.dart';


void main() => runApp(const Lembretes());

class Lembretes extends StatelessWidget {
  const Lembretes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const LembretesState(),
    );
  }
}

class LembretesState extends StatelessWidget {
  const LembretesState({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      'Lembrete - Remédio Hipertensão',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('7:45 AM'),
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
                    trailing:
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
