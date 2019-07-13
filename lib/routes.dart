import 'package:portafolio/pages/home_page/class_topic_page/class_topic_page.dart';
import 'package:portafolio/pages/welcome_page/welcome_page.dart';
import 'layouts/main_layout/main_layout.dart';
import 'layouts/main_layout/pages.dart';

final routes = {
  '/': (context) => WelcomePage(),
  MainLayout.routeName: (context) => MainLayout(pages: pages),
  ClassTopicPage.routeName: (context) => ClassTopicPage(),
};