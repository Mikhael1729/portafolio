import 'package:flutter/cupertino.dart';

class MyFadeTransition extends StatefulWidget {
  final Widget child;
  final double minimum;
  final double maximum;

  MyFadeTransition({
    @required this.child,
    this.minimum = 0.4,
    this.maximum = 1.0,
  });

  @override
  State<StatefulWidget> createState() => _MyFadeTransition();
}

class _MyFadeTransition extends State<MyFadeTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    _animation = Tween(
      begin: widget.minimum,
      end: widget.maximum,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();

    return FadeTransition(
      opacity: _animation,
      child: widget.child,
    );
  }
}
