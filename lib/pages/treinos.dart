import 'package:flutter/material.dart';

class Treinos extends StatelessWidget {
  const Treinos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 15,
        title: Text('Treinos'),
        actions: [
          Icon(
            Icons.add,
          )
        ],
      ),
      drawer: Drawer(),
      body: const Text('Body'),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.nordic_walking), label: 'Treinos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Lembretes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        onTap: (valor){
          print(valor);
        },
      ),
    );
  }
}
