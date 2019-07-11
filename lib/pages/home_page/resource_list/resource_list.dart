import 'package:flutter/material.dart';
import 'package:portafolio/models/resource.dart';
import 'package:portafolio/models/resource_type.dart';
import 'package:portafolio/pages/home_page/class_topic_page/image_resource/image_resource.dart';
import 'package:portafolio/pages/home_page/class_topic_page/video_resource/video_resource.dart';

class ResourceList extends StatelessWidget {
  ResourceList({
    Key key,
    @required this.resources,
    this.itemHeight = 200,
  }) : super(key: key);

  final double itemHeight;
  final List<Resource> resources;

  // Build separator.
  Widget _buildSeparator(BuildContext context, int index) =>
      Container(width: 10);

  // Build resource.
  Widget Function(BuildContext, int) _buildResource(List<Resource> resources) =>
      (context, index) {
        final resource = resources[index];

        if (resource.type == ResourceType.localImage ||
            resource.type == ResourceType.externalImage)
          return ImageResource(
            externalImage:
                resource.type == ResourceType.localImage ? false : true,
            children: <Widget>[
              if (resource.name != null) Text(resource.name),
              if (resource.description != null) Text(resource.description),
            ],
            imageUrl: resource.url,
          );
        else
          return OtherResource(
            icon: resource.type == ResourceType.externalVideo ? Icons.videocam : Icons.data_usage,
            child: Center(
              child: Text(
                resource.name,
                textAlign: TextAlign.center,
              ),
            ),
            width: 150,
            url: resource.url,
          );
      };

  @override 
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Resources (horizontal list).
            Expanded(
              child: Container(
                height: itemHeight,
                child: ListView.separated(
                  itemCount: resources.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: _buildResource(resources),
                  separatorBuilder: _buildSeparator,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
