import 'package:flutter/material.dart';
import 'package:portafolio/components/carousel/carousel.dart';
import 'package:portafolio/data/class_topics.dart';
import 'package:portafolio/models/class_topic.dart';
import 'package:portafolio/pages/home_page/class_topic_card/class_topic_card.dart';
import 'package:portafolio/pages/home_page/class_topic_page/class_topic_page.dart';

class ClassTopicCarousel extends StatelessWidget {
  Widget Function(dynamic) _building(BuildContext context) =>
      (dynamic topic) => ClassTopicCard(
            onTap: () => _onTap(context, topic),
            classNumber: topic.id,
            content: topic.content,
            imageUrl: topic.coverImageUrl,
            title: topic.title,
          );

  void _onTap(BuildContext context, ClassTopic topic) {
    // Finding selected class topic.
    final match = classTopics.firstWhere((t) => t.id == topic.id);

    Navigator.pushNamed(
      context,
      ClassTopicPage.routeName,
      arguments: match,
    );
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final height = media.size.height;

    return Container(
      height: height >= 720 ? 400 : 350,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Center(
        child: Carousel(items: classTopics, buildItem: _building(context)),
      ),
    );
  }
}
