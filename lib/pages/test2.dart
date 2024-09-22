import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          elevation: 15,
          title: Text('Treinos'),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Icon(
                Icons.add,
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
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.indigo,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          showInactiveTitle: true,
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(
                  () {
                _pageController.jumpToPage(index);
              },
            );
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.nordic_walking_outlined, color: Colors.black,),
              title: Text('Treinos', style: TextStyle(color: Colors.black)),
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.notifications),
              title: Text('Lembretes'),
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.person),
              title: Text('Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
