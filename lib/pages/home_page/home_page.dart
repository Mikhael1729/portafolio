import 'package:flutter/material.dart';
import 'package:portafolio/components/carousel.dart';
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

  Widget _buildCard(dynamic topic) =>
    ClassTopicCard(
      content: topic.content,
      imageUrl: topic.imageUrl,
      title: topic.title, 
    );

   BottomNavigationBarItem _barItem(String text, IconData icon) =>
    BottomNavigationBarItem(icon: Icon(Icons.class_), title: Text("Clases"));

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Color(0xFF22242D),
        items: [
          _barItem("Clases", Icons.class_),
          _barItem("Herramientas", Icons.data_usage),
          _barItem("Planteamientos", Icons.assignment),
        ]),
      body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              // Page title.
              Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: MyFadeTransition(
                  child: Text(
                    "Clases",
                    style: TextStyle(
                      fontSize: 42,
                    ),
                  ),
                ),
              ),


              // Class list.
              Expanded(
                child: Center(
                  child: Carousel(items: points, buildItem: _buildCard),
                ),
              ),
            ],
          )));
  }
}
