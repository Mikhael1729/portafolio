import 'package:flutter/material.dart';
import 'package:portafolio/models/layout_page.dart';
import 'package:portafolio/pages/home_page/home_page.dart';
import 'package:portafolio/pages/thoughts_page/thoughts_page.dart';

BottomNavigationBarItem _barItem(String text, IconData icon) =>
    BottomNavigationBarItem(
      title: Text(text),
      icon: Icon(icon),
    );

final pages = <LayoutPage>[
  LayoutPage(
    barItem: _barItem("Clases", Icons.book),
    page: HomePage(),
  ),
  LayoutPage(
    barItem: _barItem("Dudas", Icons.pan_tool),
    page: ThoughtsPage(),
  ),
  LayoutPage(
    barItem: _barItem("Herramientas", Icons.radio_button_checked),
    page: Container(color: Colors.red),
  ),
];
