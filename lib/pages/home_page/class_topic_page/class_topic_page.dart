import 'package:flutter/material.dart';
import 'package:portafolio/components/empty_app_bar/empty_app_bar.dart';
import 'package:portafolio/components/header_image/header_image.dart';
import 'package:portafolio/components/my_fade_transition.dart';
import 'package:portafolio/models/class_topic.dart';
import 'package:portafolio/pages/home_page/resource_list/resource_list.dart';

class ClassTopicPage extends StatelessWidget {
  ClassTopicPage({Key key}) : super(key: key);

  static const routeName = '/class-topic';

  @override
  Widget build(BuildContext context) {
    final ClassTopic args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: EmptyAppBar(),
      body: LayoutBuilder(
        builder: (context, viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Header
                    Stack(
                      alignment: Alignment.topLeft,
                      children: <Widget>[
                        // Header image.
                        HeaderImage(
                          primaryText: args.title,
                          secondaryText: "Clase ${args.id}",
                          imageUrl: args.coverImage,
                          lateralPadding: 20,
                        ),

                        // Back button.
                        Positioned(
                          top: 0.0,
                          left: 0.0,
                          child: Padding(
                            padding: EdgeInsets.all(24),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x60000000),
                                    blurRadius:
                                        10, // has the effect of softening the shadow
                                    spreadRadius:
                                        10, // has the effect of extending the shadow
                                  ),
                                ],
                              ),
                              child: MyFadeTransition(
                                minimum: 0.7,
                                child: FloatingActionButton(
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  backgroundColor: Color(0xFF50567A),
                                  elevation: 10,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Content.
                    Padding(
                      padding: EdgeInsets.all(24),
                      child: Column(
                        children: <Widget>[
                          Text(
                            args.content,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(color: Colors.transparent),

                    // Resources.
                    ResourceList(
                      title: "Recursos de clase",
                      resources: args.resources,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
