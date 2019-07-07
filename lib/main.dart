import 'package:flutter/material.dart';
import 'package:portafolio/pages/home_page/home_page.dart';

void main() => runApp(PortafolioApp());

class PortafolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
    MaterialApp(
      title: 'Portafolio',
      theme: _computeThemeData(),
      home: HomePage(title: 'Portafolio'),
    );

  _computeThemeData() => ThemeData.dark().copyWith(
    accentColor: Colors.white,
    backgroundColor: Color(0xFF0F111A),
    scaffoldBackgroundColor: Color(0xFF0F111A),
    cardTheme: CardTheme(color: Color(0xFF1E2333))
  );
}
