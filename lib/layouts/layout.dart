import 'package:flutter/material.dart';
import 'package:portafolio/pages/home_page/home_page.dart';

class Layout extends StatelessWidget {
  const Layout({Key key}) : super(key: key);

  BottomNavigationBarItem _barItem(String text, IconData icon) =>
      BottomNavigationBarItem(icon: Icon(Icons.class_), title: Text("Clases"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: HomePage(title: "Home Page"),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Color(0xFF22242D),
          items: [
            _barItem("Clases", Icons.class_),
            _barItem("Herramientas", Icons.data_usage),
            _barItem("Planteamientos", Icons.assignment),
          ]),
    );
  }
}

class EmptyAppBar  extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  @override
  Size get preferredSize => Size(0.0,0.0);
}