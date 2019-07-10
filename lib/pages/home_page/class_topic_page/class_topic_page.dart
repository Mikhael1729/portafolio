import 'package:flutter/material.dart';
import 'package:portafolio/components/my_fade_transition.dart';
import 'package:portafolio/layouts/normal_page.dart';
import 'package:portafolio/models/class_topic.dart';

class ClassTopicPage extends StatelessWidget {
  static const routeName = '/class-topic';

  ClassTopicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ClassTopic args = ModalRoute.of(context).settings.arguments;

    return NormalPage(
      title: Text("Clase ${args.id}"),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Title.
          Padding(
            padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
            child: MyFadeTransition(
              child: Text(
                args.title,
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ),
          ),

          Divider(height: 20, color: Colors.transparent),

          // Content.
          Padding(
            padding: EdgeInsets.fromLTRB(25, 0, 20, 0),
            child: Text(
              args.content,
              style: TextStyle(fontSize: 16),
            ),
          ),

          Divider(height: 20, color: Colors.transparent),

          // Anexos
          Padding(
            padding: EdgeInsets.fromLTRB(25, 0, 20, 0),
            child: Text(
              "Anexos",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          Divider(height: 20, color: Colors.transparent),

          Padding(
            padding: EdgeInsets.fromLTRB(25, 0, 20, 0),
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minWidth: double.infinity, maxHeight: 170),
              child: Image(
                image: AssetImage(args.coverImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
