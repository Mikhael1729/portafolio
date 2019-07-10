import 'package:flutter/material.dart';
import 'package:portafolio/components/carousel.dart';
import 'package:portafolio/models/class_topic.dart';
import 'class_topic_card/class_topic_card.dart';
import 'class_topic_page/class_topic_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  Widget Function(dynamic) _building(BuildContext context) =>
      (dynamic topic) => ClassTopicCard(
            onTap: () => _onTap(context, topic),
            classNumber: topic.id,
            content: topic.content,
            imageUrl: topic.coverImage,
            title: topic.title,
          );

  void _onTap(BuildContext context, ClassTopic topic) {
    // Finding selected class topic.
    final match = points.firstWhere((t) => t.id == topic.id);

    Navigator.pushNamed(
      context,
      ClassTopicPage.routeName,
      arguments: match,
    );
  }

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
              Text(
                "Clases",
                style: TextStyle(
                  fontSize: 36,
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
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF1D2030),
                    width: 32.0,
                  ),
                  borderRadius: BorderRadius.circular(25.0)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF1D2030),
                  width: 32.0,
                ),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ),

        // Class list.
        Expanded(
          child: Container(
            child: Center(
              child: Carousel(items: points, buildItem: _building(context)),
            ),
          ),
        ),
      ],
    );
  }
}
