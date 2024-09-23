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
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                child: ListTile(
                    title: Text(
                      'Peso',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('71,05 Kg'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                    )),
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
                      'Altura',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('1,80 m'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                    )),
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
                      'IMC',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('-----'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                    )),
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
                      'Idade',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('22 anos'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                    )),
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
                      'Sexo',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Masculino'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
