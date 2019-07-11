import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  PageController _controller;
  int _currentPage = 0;
  final pages = <Widget>[
    Container(width: double.infinity, color: Colors.green),
    Container(width: double.infinity, color: Colors.red),
  ];

  void _onPageChanged(int page) =>
    setState(() => _currentPage = page);

  Widget _buildPage(BuildContext context, int index) => pages[index];

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: _currentPage,
      keepPage: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: pages.length,
      controller: _controller,  
      onPageChanged: _onPageChanged,
      itemBuilder: _buildPage,
    );
  }
}
