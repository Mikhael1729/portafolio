import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  final String imageUrl;
  final double maxHeight;
  final double imageRadius;
  final double lateralPadding;

  const HeaderImage({
    Key key,
    @required this.primaryText,
    @required this.secondaryText,
    this.maxHeight = 300,
    this.imageUrl,
    this.imageRadius = 0,
    this.lateralPadding = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        // Image
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: double.infinity,
            maxHeight: maxHeight,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(imageRadius),
              topRight: Radius.circular(imageRadius),
            ),
            child: Image(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Class number and title.
        Container(
          width: double.infinity,
          color: Color(0x90000000),
          child: Padding(
            padding: EdgeInsets.fromLTRB(lateralPadding, 10, lateralPadding, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Clase $secondaryText"),
                // Title.
                Text(
                  primaryText,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
