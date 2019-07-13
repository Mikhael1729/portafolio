import 'package:flutter/material.dart';

class ImageUrlAndType {
  final bool isExternal;
  final String imageUrl;
  
  ImageUrlAndType({this.isExternal, this.imageUrl});
 
  Widget generate() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: isExternal
          ? Image.network(imageUrl)
          : Image(image: AssetImage(imageUrl), fit: BoxFit.cover),
    );
  }
}
