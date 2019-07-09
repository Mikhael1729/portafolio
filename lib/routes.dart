import 'package:portafolio/pages/home_page/class_topic_page/class_topic_page.dart';
import 'package:portafolio/pages/home_page/pages.dart';
import 'layouts/layout.dart';

final routes = {
  '/': (context) => Layout(pages: pages),
  ClassTopicPage.routeName: (context) => ClassTopicPage(),
};