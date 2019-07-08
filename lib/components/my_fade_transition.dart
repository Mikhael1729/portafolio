import 'package:flutter/cupertino.dart';

class MyFadeTransition extends StatefulWidget {
  final Widget child;

  MyFadeTransition({@required this.child});

  @override
  State<StatefulWidget> createState() => _MyFadeTransition();
}

class _MyFadeTransition extends State<MyFadeTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
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
      begin: 0.3,
      end: 1.0,
      
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
