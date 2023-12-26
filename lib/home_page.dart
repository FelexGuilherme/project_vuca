import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture:
                  ClipOval(child: Image.asset('assets/imagens/foto.jpeg')),
              accountName: Text('Guilherme Felex'),
              accountEmail: Text('GuilhermeFelex@hotmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Gestor de Frota'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.speed_outlined),
              title: Text('Conduto'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.build_rounded),
              title: Text('Oficina'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/map');
                
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('Sair'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ), //Menu "Hamburguer"
      appBar: AppBar(
        title: Text('Vuca Fleet'),
      ),
      body: Center(),
    );
  }
}
