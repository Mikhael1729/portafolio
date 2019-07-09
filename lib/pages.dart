import 'package:flutter/material.dart';
import 'package:portafolio/pages/home_page/home_page.dart';

import 'models/layout_page.dart';

BottomNavigationBarItem _barItem(String text, IconData icon) =>
  BottomNavigationBarItem(
    title: Text(text),
    icon: Icon(icon),
  );

final pages = <LayoutPage> [
  LayoutPage(
    barItem: _barItem("Clases", Icons.book),
    page: HomePage(),
  ),
  LayoutPage(
    barItem: _barItem("Herramientas", Icons.pan_tool),
    page: Container(color: Colors.blue),
  ),
  LayoutPage(
    barItem: _barItem("Herramientas", Icons.radio_button_checked),
    page: Container(color: Colors.blue),
  ),
];