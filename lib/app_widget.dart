import 'package:flutter/material.dart';

import 'home_page.dart';

// ignore: use_key_in_widget_constructors
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}
