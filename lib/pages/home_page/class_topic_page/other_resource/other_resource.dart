import 'dart:math';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OtherResource extends StatelessWidget {
  final Widget child;
  final double height;
  final double padding;
  final String url;
  final double width;
  final IconData icon;

  OtherResource({
    Key key,
    @required this.url,
    @required this.child,
    @required this.icon,
    this.width = 300,
    this.height = 300,
    this.padding = 10,
  }) : super(key: key);

  Color _generateBackgroundColor() {
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.red,
      Colors.black54,
      Colors.blueGrey,
      Colors.deepOrange
    ];
    final randomIndex = new Random().nextInt(colors.length);

    return colors[randomIndex];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunch(url)) await launch(url);
      },
      child: Container(
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: <Widget>[
            // Image.
            Container(
              height: double.infinity,
              width: double.infinity,
              color: _generateBackgroundColor(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon.
                  Icon(
                    icon,
                    size: 50,
                  ),

                  // Children.
                  child,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
