import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portafolio/models/resource_type.dart';

class Resource {
  final int id;
  final String name;
  final String description;
  final String url;
  final ResourceType type;
  
  IconData get icon {
    if (type == ResourceType.externalImage || type == ResourceType.localImage)
      return Icons.image;
    else if (type == ResourceType.externalVideo)
      return Icons.videocam;
    else 
      return Icons.attach_file;    
  }

  Resource({
    this.id,
    @required this.name,
    this.description,
    this.url,
    this.type = ResourceType.externalImage,
  });
}