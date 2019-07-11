import 'package:portafolio/models/class_topic.dart';
import 'package:portafolio/models/resource.dart';
import 'package:portafolio/models/resource_type.dart';
import 'package:portafolio/models/url_resource.dart';

final classTopics = <ClassTopic>[
  // Clase 1
  ClassTopic(
    id: 1,
    title: "Electronic Day",
    content:"Nuestro primer encuentro con el profesor fue en el evento ElectronicDayRD2K19. En éste se presentaron varias conferencias, talleres y charlas del área de tecnología electro-informática. El evento se celebró en el salón P. Julio Soto del Instituto Técnico Salesiano - ITESA en horario de 8:00am a  05:00pm ",
    coverImageUrl: "https://thumbs.subefotos.com/3b7e33bf122edab01ff92e0dd72adbbao.jpg",
    resources: [
      Resource(
        id: 1,
        name: "Fragmento de la tabla de actividades",
        url: "https://thumbs.subefotos.com/b093a15a311e61f07eb4ed88441c85bao.jpg",
        type: ResourceType.externalImage,
      ),
    ],
  ),

  // Clase 2
];
