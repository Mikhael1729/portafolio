import 'package:flutter/material.dart';
import 'package:portafolio/pages/home_page/class_topic_page/class_topic_page.dart';

class ClassTopicCard extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;
  final void Function() onTap;

  ClassTopicCard({this.title, this.content, this.imageUrl, this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 400),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Card(
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Class number.
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 24, 24, 5),
                  child: Text("Clase 1"),
                ),
                // Title.
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
                  child: Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Image
                ConstrainedBox(
                  constraints:
                      BoxConstraints(minWidth: double.infinity, maxHeight: 170),
                  child: Image(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                // Content
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 18, 24, 24),
                    child: Text(
                      this.content,
                      softWrap: true,
                      maxLines: 4,
                      style: TextStyle(fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
