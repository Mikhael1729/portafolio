import 'package:flutter/foundation.dart';
import 'package:portafolio/models/resource.dart';
import 'package:portafolio/models/resource_type.dart';
import 'package:portafolio/models/url_resource.dart';

class ClassTopic {
  final int id;
  final String title;
  final String content;
  final String coverImage;
  final List<UrlResource> urls;
  final List<Resource>
      resources; // Videos, images or links of the teacher class.
  final List<Resource>
      attachments; // Your homeworks and other related things (your links)

  ClassTopic({
    @required this.id,
    this.title,
    this.content,
    this.coverImage,
    this.resources,
    this.attachments,
    this.urls,
  });
}

final points = [
  ClassTopic(
    id: 1,
    title: "Sistemas de numeración",
    content:
        "Los sistemas de numeración son herramientas matemáticas usadadas para representar las cantidades de una manera abstracta Los sistemas de numeración son herramientas matemáticas usadadas para representar las cantidades de una manera abstracta",
    coverImage: "lib/images/image_two.jpg",
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
        url: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiK37C6mqnjAhWt1FkKHfwsDKEQjRx6BAgBEAU&url=https%3A%2F%2Fes.wikipedia.org%2Fwiki%2FJohann_Sebastian_Bach&psig=AOvVaw23W5zMCreRr3hWLS_GeRq2&ust=1562808757512941"
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
