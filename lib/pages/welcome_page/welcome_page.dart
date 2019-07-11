import 'package:flutter/material.dart';
import 'package:portafolio/components/empty_app_bar/empty_app_bar.dart';
import 'package:portafolio/pages/welcome_page/presentation/presentation.dart';

import 'about_page/about_subject.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  PageController _controller;
  int _currentPage = 0;
  List<Widget> _pages;

  static Widget _scaffold(Widget fragment) => Scaffold(
        appBar: EmptyAppBar(),
        body: fragment,
      );

  void _onPageChanged(int page) => setState(() => _currentPage = page);

  void _nextPage() {
    _controller.animateToPage(
      _currentPage + 1,
      duration: Duration(milliseconds: 150),
      curve: Curves.easeOut,
    );
  }

  Widget _buildPage(BuildContext context, int index) => _pages[index];

  @override
  void initState() {
    super.initState();

    // Controller
    _controller = PageController(
      initialPage: _currentPage,
      keepPage: false,
    );

    // Pages
    _pages = <Widget>[
      _scaffold(Presentation(nextPage: _nextPage)),
      _scaffold(AboutPage(nextPage: _nextPage))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: _pages.length,
      controller: _controller,
      onPageChanged: _onPageChanged,
      itemBuilder: _buildPage,
    );
  }
}
