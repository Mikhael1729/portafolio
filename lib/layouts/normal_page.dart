import 'package:flutter/material.dart';

class NormalPage extends StatelessWidget {
  final String title;
  final Widget child;

  const NormalPage(this.child, this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title == null ? "" : title),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: child,
      resizeToAvoidBottomInset: false,
    );
  }
}
