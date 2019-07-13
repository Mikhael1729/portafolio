import 'package:flutter/material.dart';
import 'package:portafolio/models/image_and_type.dart';
import 'package:portafolio/pages/expand_image/expand_image.dart';

class ImageResource extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final double padding;
  final Color color;
  final List<Widget> children;
  final bool externalImage;

  ImageResource({
    Key key,
    @required this.imageUrl,
    @required this.children,
    @required this.externalImage,
    this.color = const Color(0x90000000),
    this.width = 300,
    this.height = 300,
    this.padding = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = !externalImage
        ? Image(image: AssetImage(imageUrl), fit: BoxFit.cover)
        : Image.network(imageUrl, fit: BoxFit.cover);

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          ExpandImage.routeName,
          arguments: new ImageUrlAndType(
            imageUrl: imageUrl,
            isExternal: externalImage,
          ),
        );
      },
      child: Container(
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: <Widget>[
            // Image.
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: image,
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
      ),
    );
  }
}
