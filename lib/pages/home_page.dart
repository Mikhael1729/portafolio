import 'package:flutter/material.dart';
import 'package:portafolio/components/class_topic_card.dart';
import 'package:portafolio/models/class_topic.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: points.length,
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        itemBuilder: (context, index) => 
          ClassTopicCard(
            title: points[index].title,
            content: points[index].content,
            imageUrl: points[index].imageUrl,
          ),
      ));
}
