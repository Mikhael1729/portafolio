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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xFF000000),
            blurRadius: 8, // has the effect of softening the shadow
            spreadRadius: 8, // has the effect of extending the shadow
            offset: Offset(
              10.0, // horizontal, move right 10
              10.0, // vertical, move down 10
            ),
          ),
        ]),
        child: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Theme.of(context).backgroundColor,
          items: [
            _barItem("Clases", Icons.class_),
            _barItem("Herramientas", Icons.data_usage),
            _barItem("Planteamientos", Icons.assignment),
          ],
        ),
      ),
    );
  }
}

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Size get preferredSize => Size(0.0, 0.0);
}
