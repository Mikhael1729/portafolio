import 'package:flutter/material.dart';
import 'package:portafolio/pages/home_page/drawer_item.dart';

class DrawerApp extends StatelessWidget {
  final List<Widget> items;

  DrawerApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          padding: EdgeInsets.all(0),
          child: Container(
            color: Color.fromRGBO(0, 0, 0, 0.5),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Portafolio",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        shadows: [
                          Shadow(color: Colors.white, blurRadius: 0.2)
                        ]),
                  ),
                  Text(
                    "Mikhael Santos (1088621)",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage("lib/images/binary_code.jpeg"),
                  fit: BoxFit.fitWidth)),
        ),
        ...items
      ],
    )));
  }
}
