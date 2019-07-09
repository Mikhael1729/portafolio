import 'package:flutter/material.dart';

class NormalPage extends StatelessWidget {
  final Widget title;
  final Widget child;

  const NormalPage({Key key, this.child, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title == null ? Text("") : title,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: child,
      resizeToAvoidBottomInset: false,
    );
  }
}
