import 'package:flutter/material.dart';
import 'package:portafolio/models/class_topic.dart';

class ClassTopicPage extends StatelessWidget {
  static const routeName = '/class-topic'; 
  
  ClassTopicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ClassTopic args = ModalRoute.of(context).settings.arguments;

    return Container(
      color: Colors.green,
    );
  }
}
