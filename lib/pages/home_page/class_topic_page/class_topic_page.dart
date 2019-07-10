import 'package:flutter/material.dart';
import 'package:portafolio/components/empty_app_bar/empty_app_bar.dart';
import 'package:portafolio/components/header_image/header_image.dart';
import 'package:portafolio/components/my_fade_transition.dart';
import 'package:portafolio/models/resource.dart';
import 'package:portafolio/models/class_topic.dart';
import 'package:portafolio/pages/home_page/class_topic_page/image_resource/image_resource.dart';

class ClassTopicPage extends StatelessWidget {
  static const routeName = '/class-topic';

  ClassTopicPage({Key key}) : super(key: key);

  // Build separator.
  Widget _buildSeparator(BuildContext context, int index) =>
      Container(width: 10);

  // Build resource.
  Widget Function(BuildContext, int) _buildResource(List<Resource> resources) =>
      (context, index) {
        final resource = resources[index];
        
        return ImageResource(
          children: <Widget>[
            if(resource.name != null) Text(resource.name),
            if(resource.description != null) Text(resource.description),
          ],
          imageUrl: "lib/images/image_two.jpg",
        );
      };

  // Build attachment.
  Widget _buildAttachment(BuildContext context, int index) => Container(
        height: 200,
        child: Image(
          image: AssetImage('lib/images/image_two.jpg'),
        ),
      );

  Widget _buildResources({
    @required String title,
    double itemHeight = 200,
    @required List<Resource> resources,
    @required
        Widget Function(BuildContext, int) Function(List<Resource>) itemBuilder,
    @required Widget Function(BuildContext, int) separatorBuilder,
  }) =>
      // Resources.
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Resources (title)
            Padding(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Divider(color: Colors.transparent),

            // Resources (horizontal list).
            Expanded(
              child: Container(
                height: itemHeight,
                child: ListView.separated(
                  itemCount: resources.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: itemBuilder(resources),
                  separatorBuilder: separatorBuilder,
                ),
              ),
            ),
          ],
        ),
      );

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
                        HeaderImage(
                          primaryText: args.title,
                          secondaryText: "Clase ${args.id}",
                          imageUrl: args.coverImage,
                          lateralPadding: 20,
                        ),
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
                    _buildResources(
                      title: "Recursos de clase",
                      itemBuilder: _buildResource,
                      resources: args.resources,
                      separatorBuilder: _buildSeparator,
                    ),

                    Divider(color: Colors.transparent),
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
