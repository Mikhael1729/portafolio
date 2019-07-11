import 'package:portafolio/pages/home_page/class_topic_page/class_topic_page.dart';
import 'package:portafolio/pages/home_page/pages.dart';
import 'package:portafolio/pages/welcome_page/welcome_page.dart';
import 'layouts/layout.dart';

final routes = {
  '/': (context) => WelcomePage(),
  Layout.routeName: (context) => Layout(pages: pages),
  ClassTopicPage.routeName: (context) => ClassTopicPage(),
};