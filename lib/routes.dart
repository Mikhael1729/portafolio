import 'package:portafolio/layouts/main_layout/main_layout.dart';
import 'package:portafolio/pages/home_page/class_topic_page/class_topic_page.dart';
import 'package:portafolio/pages/welcome_page/welcome_page.dart';

final routes = {
  '/': (context) => WelcomePage(),
  MainLayout.routeName: (context) => MainLayout(),
  ClassTopicPage.routeName: (context) => ClassTopicPage(),
};