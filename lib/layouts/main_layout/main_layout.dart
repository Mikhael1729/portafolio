import 'package:flutter/material.dart';
import 'package:portafolio/components/empty_app_bar/empty_app_bar.dart';
import 'package:portafolio/layouts/main_layout/pages.dart';

class MainLayout extends StatefulWidget {
  static const routeName = '/classes';

  MainLayout({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Layout();
}

class _Layout extends State<MainLayout> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: pages[_currentIndex].page,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFF000000),
              blurRadius: 8, // has the effect of softening the shadow
              spreadRadius: 8, // has the effect of extending the shadow
              offset: Offset(
                10.0, // horizontal, move right 10
                10.0, // vertical, move down 10
              ),
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: _onTabTapped,
          currentIndex: _currentIndex,
          backgroundColor: Theme.of(context).backgroundColor,
          items: pages.map((page) => page.barItem).toList(),
        ),
      ),
    );
  }
}

