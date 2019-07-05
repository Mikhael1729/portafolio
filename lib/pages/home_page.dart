import 'package:flutter/material.dart';
import 'package:portafolio/components/point_card.dart';
import 'package:portafolio/models/point.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<Point> row1 = [];
    final List<Point> row2 = [];

    for (var i = 0; i < points.length; i++) {
      final point = points[i];
      if (i % 2 == 0)
        row1.add(point);
      else
        row2.add(point);
    }

    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: SingleChildScrollView(
          child: Row(children: [
            Expanded(
                flex: 1,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        row1.map((point) => _buildPointCard(point)).toList())),
            Expanded(
              flex: 1,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      row2.map((point) => _buildPointCard(point)).toList()),
            ),
          ]),
        ));
  }

  Widget _buildPointCard(Point point) => PointCard(
        title: point.title,
        content: point.content,
        imageUrl: point.imageUrl,
      );
}

// points.map((point) =>
//   PointCard(
//     content: point.content,
//     title: point.title
//   )
// ).toList()
