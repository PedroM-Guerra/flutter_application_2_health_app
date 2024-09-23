import 'package:flutter/material.dart';

class NovoTreino extends StatefulWidget {
  const NovoTreino({super.key});

  @override
  State<NovoTreino> createState() => _NovoTreinoState();
}

class _NovoTreinoState extends State<NovoTreino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation: 15,
        backgroundColor: Colors.purple[50],
        title: const Text('Novo Treino'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.check),
            ),
          )
        ],
      ),
      body: ListView(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Nome do Treino',
                    alignLabelWithHint: false,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Descrição',
                    alignLabelWithHint: false,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Data do Treino',
                    alignLabelWithHint: false,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Horario do Treino',
                    alignLabelWithHint: false,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Duração do Treino',
                    alignLabelWithHint: false,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Distância Percorrida',
                    suffixText: 'Km',
                    alignLabelWithHint: false,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Calorias Gastas',
                    suffixText: 'Cal',
                    alignLabelWithHint: false,
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
