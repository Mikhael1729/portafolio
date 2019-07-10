import 'dart:math';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoResource extends StatelessWidget {
    final Widget child;
  final double height;
  final double padding;
  final String videoUrl;
  final double width;

  VideoResource({
    Key key,
    @required this.videoUrl,
    @required this.child,
    this.width = 300,
    this.height = 300,
    this.padding = 10,
  }) : super(key: key);



  Color _generateBackgroundColor() {
    final colors = [Colors.blue, Colors.yellow, Colors.red];
    final randomIndex = new Random().nextInt(colors.length);

    return colors[randomIndex];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if(await canLaunch(videoUrl))
          await launch(videoUrl);
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
                    Icons.videocam,
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
