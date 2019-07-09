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
        Padding(
          padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyFadeTransition(
                child: Text(
                  "Clases",
                  style: TextStyle(
                    fontSize: 36,
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 40,
                child: FloatingActionButton(
                  child: Icon(Icons.list, color: Colors.white),
                  backgroundColor: Color(0xFF1D2030),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              hintStyle: new TextStyle(color: Colors.grey[800]),
              hintText: "Type in your text",
              fillColor: Colors.transparent,
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF1D2030), width: 32.0),
                  borderRadius: BorderRadius.circular(25.0)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF1D2030), width: 32.0),
                  borderRadius: BorderRadius.circular(25.0)),
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
