import 'package:flutter/material.dart';

class ClassTopicCard extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;

  ClassTopicCard({this.title, this.content, this.imageUrl});

  @override
  Widget build(BuildContext context) => Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Title.
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                this.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Image
            Image(image: AssetImage(imageUrl), fit: BoxFit.cover),

            // Content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(this.content,
                  softWrap: true, maxLines: 4, style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      );
}
