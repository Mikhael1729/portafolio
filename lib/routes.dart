import 'package:portafolio/pages/expand_image/expand_image.dart';
import 'package:portafolio/pages/home_page/class_topic_page/class_topic_page.dart';
import 'package:portafolio/pages/welcome_page/welcome_page.dart';
import 'layouts/main_layout/main_layout.dart';

final routes = {
  '/': (context) => WelcomePage(),
  MainLayout.routeName: (context) => MainLayout(),
  ClassTopicPage.routeName: (context) => ClassTopicPage(),
  ExpandImage.routeName: (context) => ExpandImage(),
};
