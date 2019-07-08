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
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 400),
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: points.length,
                      itemBuilder: (context, index) => _buildCard(points[index]),
                      separatorBuilder: (context, index) => Container(width: 15,)
                    ),
                  ),
                ),
              ),
            ],
          )));

  Widget _buildCard(ClassTopic topic) =>
    ClassTopicCard(
      content: topic.content,
      imageUrl: topic.imageUrl,
      title: topic.title,
    );
}
