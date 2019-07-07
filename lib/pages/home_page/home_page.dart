import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portafolio/components/class_topic_card.dart';
import 'package:portafolio/models/class_topic.dart';
import 'package:portafolio/pages/home_page/drawer.dart';
import 'package:portafolio/pages/home_page/drawer_item.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Container(
          width: 380,
          height: 500,
          child: ClassTopicCard(
            content: points[0].content,
            imageUrl: points[0].imageUrl,
            title: points[0].title,
          ),
        ),
      ));
}
