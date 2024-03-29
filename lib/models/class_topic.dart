import 'package:flutter/foundation.dart';
import 'package:portafolio/models/concept.dart';
import 'package:portafolio/models/resource.dart';
import 'package:portafolio/models/resource_type.dart';
import 'package:portafolio/models/url_resource.dart';

class ClassTopic {
  final int id;
  final int classNumber;
  final String title;
  final String content;
  final String coverImageUrl;
  final List<UrlResource> urls;
  final List<Resource>
      resources; // Videos, images or links of the teacher class.
  final List<Resource>
      attachments; // Your homeworks and other related things (your links)
  final List<Concept> concepts;

  ClassTopic({
    @required this.id,
    this.classNumber,
    this.title,
    this.content,
    this.coverImageUrl,
    this.resources,
    this.attachments,
    this.urls,
    this.concepts,
  });
}

final points = [
  ClassTopic(
    id: 1,
    title: "Sistemas de numeración",
    content:
        "Los sistemas de numeración son herramientas matemáticas usadadas para representar las cantidades de una manera abstracta Los sistemas de numeración son herramientas matemáticas usadadas para representar las cantidades de una manera abstracta",
    coverImageUrl: "lib/images/image_two.jpg",
    urls: [
      UrlResource(
        id: 1,
        title: "Conversión de binario a decimal (tarea)",
        url:
            "https://clasew.jimdo.com/app/download/6632237854/Omar+Trejos+Buritic%C3%A1+-+La+Esencia+de+la+Logica+de+Programaci%C3%B3n.pdf?t=1377395454",
      ),
    ],
    attachments: [
      Resource(
        id: 1,
        name: "Pieza de Chopin",
        type: ResourceType.externalVideo,
        url: "https://www.youtube.com/watch?v=BIq466YxQ9g"
      ),
      Resource(
        id: 2,
        name: "Bach busto",
        type: ResourceType.externalImage,
        url: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Johann_Sebastian_Bach.jpg"
      ),
    ],
    resources: [
      Resource(
        id: 1,
        name: "La trágica historia del niño hombre",
        url: "https://www.youtube.com/watch?v=JjfClL6nogo&t=242s" ,
        type: ResourceType.externalVideo,
      ),
      Resource(
        id: 2,
        name: "Imagen de ensamblador",
        url: "https://sistemas.com/termino/wp-content/uploads/ensamblador.jpg",
        type: ResourceType.externalImage,
      ),
    ]
  ),
  ClassTopic(
    id: 2,
    title: "Conversiones",
    content:
        "Existen conversiones las cuales sirven para pasar números en un determinado sistema de numeración a otro.",
    coverImageUrl: "lib/images/image_one.jpg",
  ),
  ClassTopic(
    id: 3,
    title: "Conversiones",
    content:
        "Existen conversiones las cuales sirven para pasar números en un determinado sistema de numeración a otro.",
    coverImageUrl: "lib/images/image_two.jpg",
  ),
  ClassTopic(
    id: 4,
    title: "Sistemas de numeración",
    content:
        "Los sistemas de numeración son herramientas matemáticas usadadas para representar las cantidades de una manera abstracta",
    coverImageUrl: "lib/images/image_one.jpg",
  ),
];
