import 'package:flutter/material.dart';

class ImageResource extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final double padding;
  final Color color;
  final List<Widget> children;

  const ImageResource({
    Key key,
    @required this.imageUrl,
    @required this.children,
    this.color = const Color(0x90000000),
    this.width = 300,
    this.height = 300,
    this.padding = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          // Image.
          Container(
            width: double.infinity,
            child: Image(image: AssetImage(imageUrl), fit: BoxFit.cover),
          ),

          // Content
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  color: color,
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: children,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}