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
  Widget build(BuildContext context) => 
    Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: GridView.builder(
        
        itemCount: points.length,
        itemBuilder: (context, index) => 
          PointCard(
            title: points[index].title,
            content: points[index].content,
            imageUrl: points[index].imageUrl,
          ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.width / 0.5)
        ),
      )
    );
}