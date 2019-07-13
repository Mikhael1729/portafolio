import 'package:flutter/material.dart';
import 'package:portafolio/data/class_topics.dart';
import 'package:portafolio/models/class_topic.dart';
import 'package:portafolio/pages/home_page/class_topic_page/class_topic_page.dart';

import '../home_page.dart';

class ClasTopicList extends StatelessWidget {
  void Function() _onTapItem(BuildContext context, ClassTopic topic) {
    return () {
      // Finding selected class topic.
      final match = classTopics.firstWhere((t) => t.id == topic.id);

      Navigator.pushNamed(
        context,
        ClassTopicPage.routeName,
        arguments: match,
      );
    };
  }

  Widget _buildTopicClassItem(BuildContext context, int index) {
    return TopicClassItem(
      classNumber: classTopics[index].id,
      description: classTopics[index].content,
      title: classTopics[index].title,
      onTap: _onTapItem(context, classTopics[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(color: Colors.grey),
      itemCount: classTopics.length,
      itemBuilder: _buildTopicClassItem,
    );
  }
}

