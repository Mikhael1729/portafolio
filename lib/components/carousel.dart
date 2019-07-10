import 'package:flutter/material.dart';

class Carousel<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(T data) buildItem;
  final double itemsHeight;
  final double viewPortFraction;

  Carousel({
    Key key,
    @required this.items,
    @required this.buildItem,
    this.itemsHeight,
    this.viewPortFraction = 0.8,
  }) : super(key: key);

  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  PageController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: _currentPage,
      keepPage: false,
      viewportFraction: widget.viewPortFraction,
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child, int index) {
    double value = 1;

    if (_controller.position.haveDimensions) {
      value = _controller.page - index;
      value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
    }

    return Center(
      child: SizedBox(
        height: Curves.easeOut.transform(value) * (widget.itemsHeight == null
            ? 400
            : widget.itemsHeight), // Height before focus.
        child: child,
      ),
    );
  }

  Widget _buildAnimatedItem(BuildContext context, int index) => AnimatedBuilder(
        animation: _controller,
        builder: (c, w) => _buildAnimation(c, w, index),
        child: Container(
          margin: EdgeInsets.fromLTRB(index == 0 ? 0 : 5, 0, 5, 0),
          child: widget.buildItem(widget.items[index]),
        ),
      );

  void _onPageChanged(int newPage) => setState(() {
        _currentPage = newPage;
      });

  @override
  Widget build(BuildContext context) => PageView.builder(
        itemCount: widget.items.length,
        controller: _controller,
        onPageChanged: _onPageChanged,
        itemBuilder: _buildAnimatedItem,
      );
}
