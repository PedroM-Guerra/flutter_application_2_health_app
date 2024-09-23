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
                      'Lembrete - Remédio Hipertensão',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('7:45 AM'),
                    trailing: Switch(
                        value: isSwitched1,
                        onChanged: (value) {
                          setState(
                                () {
                              isSwitched1 = value;
                            },
                          );
                        }),
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
                    'Lembrete - Fazer um Lanche',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('10:30 AM'),
                  trailing:
                  Switch(
                      value: isSwitched2,
                      onChanged: (value) {
                        setState(
                              () {
                            isSwitched2 = value;
                          },
                        );
                      }),
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
                    'Lembrete - Se Exercitar',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('2:00 PM'),
                  trailing:
                  Switch(
                      value: isSwitched3,
                      onChanged: (value) {
                        setState(
                              () {
                            isSwitched3 = value;
                          },
                        );
                      }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
