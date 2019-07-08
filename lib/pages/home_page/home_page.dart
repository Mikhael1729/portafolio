import 'package:flutter/material.dart';
import 'package:portafolio/components/class_topic_card.dart';
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
            icon: Icon(Icons.class_),
            title: Text("Clases")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_usage),
            title: Text("Herramientas")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text("Planteamientos")
          )
        ]
      ),
      body: Center(
        child: ClassTopicCard(
          content: points[0].content,
          imageUrl: points[0].imageUrl,
          title: points[0].title,
        ),
      ));
}
