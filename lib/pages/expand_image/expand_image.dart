import 'package:flutter/material.dart';
import 'package:portafolio/models/image_and_type.dart';

class ExpandImage extends StatelessWidget {
  static String routeName = '/expand-image';

  ExpandImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImageUrlAndType args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            child: args.generate(),
          ),
          Container(
            height: 80,
            child: AppBar(
              backgroundColor: Color(0x800F111A),
              title: Text(args.title),
            ),
          ),
        ],
      ),
    );
  }
}
