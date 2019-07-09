import 'package:portafolio/pages/home_page/class_topic_page/class_topic_page.dart';
import 'package:portafolio/pages/home_page/pages.dart';
import 'layouts/layout.dart';
import 'layouts/normal_page.dart';

final routes = {
  '/': (context) => Layout(pages: pages),
  '/class-topic': (context) => NormalPage(ClassTopicPage(), "Hello"),
};