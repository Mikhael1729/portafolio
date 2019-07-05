import 'package:flutter/material.dart';
import 'package:portafolio/pages/home_page.dart';

void main() => runApp(PortafolioApp());

class PortafolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
    MaterialApp(
      title: 'Portafolio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(title: 'Portafolio'),
    );
}


