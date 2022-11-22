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
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Gestor de Frota'),
            ),
            ListTile(
              leading: Icon(Icons.speed_outlined),
              title: Text('Conduto'),
            ),
            ListTile(
              leading: Icon(Icons.build_rounded),
              title: Text('Oficina'),
            ),
            ListTile(
              leading: Icon(Icons.construction_outlined),
              title: Text('Configuração'),
            ),
            ListTile(
              leading: Icon(Icons.document_scanner_sharp),
              title: Text('Termo de uso'),
            ),
            ListTile(
              leading: Icon(Icons.door_front_door_outlined),
              title: Text('Logout'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ), //Menu "Hamburguer"
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 116, 10),
        title: Text('Vuca Fleet'),
      ),
      body: Center(),
    );
  }
}
