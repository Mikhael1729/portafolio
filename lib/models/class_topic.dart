import 'package:flutter/foundation.dart';
import 'package:portafolio/models/resource.dart';

class ClassTopic {
  final int id;
  final String title;
  final String content;
  final String coverImage;
  final List<Resource> resources; // Videos, images or links of the teacher class.
  final List<Resource> attachments; // Your homeworks and other related things (your links)

  ClassTopic({
    @required this.id,
    this.title,
    this.content,
    this.coverImage,
    this.resources,
    this.attachments,
  });
}

final points = [
  ClassTopic(
    id: 1,
    title: "Sistemas de numeración",
    content:
        "Los sistemas de numeración son herramientas matemáticas usadadas para representar las cantidades de una manera abstracta Los sistemas de numeración son herramientas matemáticas usadadas para representar las cantidades de una manera abstracta",
    coverImage: "lib/images/image_two.jpg",
  ),
  ClassTopic(
    id: 2,
    title: "Conversiones",
    content:
        "Existen conversiones las cuales sirven para pasar números en un determinado sistema de numeración a otro.",
    coverImage: "lib/images/image_one.jpg",
  ),
  ClassTopic(
    id: 3,
    title: "Conversiones",
    content:
        "Existen conversiones las cuales sirven para pasar números en un determinado sistema de numeración a otro.",
    coverImage: "lib/images/image_two.jpg",
  ),
  ClassTopic(
    id: 4,
    title: "Sistemas de numeración",
    content:
        "Los sistemas de numeración son herramientas matemáticas usadadas para representar las cantidades de una manera abstracta",
    coverImage: "lib/images/image_one.jpg",
  ),
];
