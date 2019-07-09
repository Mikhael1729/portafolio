import 'package:flutter/material.dart';
import 'package:portafolio/components/carousel.dart';
import 'package:portafolio/components/class_topic_card.dart';
import 'package:portafolio/components/my_fade_transition.dart';
import 'package:portafolio/models/class_topic.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  Widget _buildCard(dynamic topic) => ClassTopicCard(
        content: topic.content,
        imageUrl: topic.imageUrl,
        title: topic.title,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Page title.
        Container(
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyFadeTransition(
                  child: Text(
                    "Clases",
                    style: TextStyle(
                      fontSize: 42,
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.list, color: Colors.white),
                  backgroundColor: Color(0xFF1D2030),
                ),
              ],
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
    );
  }
}
