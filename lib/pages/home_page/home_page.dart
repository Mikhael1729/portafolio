import 'package:flutter/material.dart';
import 'package:portafolio/components/class_topic_card.dart';
import 'package:portafolio/components/my_fade_transition.dart';
import 'package:portafolio/models/class_topic.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Color(0xFF22242D),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.class_), title: Text("Clases")),
            BottomNavigationBarItem(
                icon: Icon(Icons.data_usage), title: Text("Herramientas")),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment), title: Text("Planteamientos"))
          ]),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyFadeTransition(
              child: Text(
                "Clases",
                style: TextStyle(
                  fontSize: 42,
                ),
              ),
            ),
            Container(height: 40),
            Center(
              child: ClassTopicCard(
                content: points[0].content,
                imageUrl: points[0].imageUrl,
                title: points[0].title,
              ),
            ),
          ],
        ),
      )));
}
