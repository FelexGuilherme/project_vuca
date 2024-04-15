import 'package:flutter/material.dart';
import 'package:project_vuca/map_page.dart';
import 'package:project_vuca/Login_page.dart';
import 'package:project_vuca/home_page.dart';

void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VUCA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => MapPage(),
        '/map': (context) => MapPage()
      },
    );
  }
}
