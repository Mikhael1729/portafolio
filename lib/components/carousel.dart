import 'package:flutter/material.dart';

class Carousel<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(T data) buildItem;

  Carousel({
    Key key, 
    @required this.items,
    @required this.buildItem,
  }) : super(key: key);

  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  PageController _controller;
  int _currentPage;

  @override
  void initState() { 
    super.initState();
    _currentPage = 1;
    _controller = PageController(
      initialPage: _currentPage,
      keepPage: true,
      viewportFraction: 0.5,
    );
  }

  @override
  Widget build(BuildContext context) => 
    PageView(
      controller: _controller,
      onPageChanged: _onPageChanged,
      children: widget.items.map(widget.buildItem).toList(),
    );

  void _onPageChanged(int newPage) => setState(() {
    _currentPage = newPage;
  });
}