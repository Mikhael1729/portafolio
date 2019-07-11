import 'package:portafolio/models/class_topic.dart';
import 'package:portafolio/models/resource.dart';
import 'package:portafolio/models/resource_type.dart';
import 'package:portafolio/models/url_resource.dart';

import 'concept.dart';

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
  ClassTopic(
    id: 2,
    title: "Álgebra booleana y circuitos lógicos",
    content: "El álgebra booleana es una estructura algebraica que esquematiza las operaciones lógicas. En clase estuvimos viendo también lo que son puertas lógicas, que no son más que las aplicaciones básicas para con ellas formar circuitos lógicos. Existen varios métodos para para calcular el resultado de un conjunto de compuertas lógicas: Reducción de funciones y mapas de karnot",
    coverImageUrl: "https://thumbs.subefotos.com/9997eee327fd1bc025f17970ec70eedco.jpg",
    attachments: <Resource>[
      Resource(
        id: 2,
        name: "Tarea 1",
        description: "Convertir de decimal a binario",
        type: ResourceType.externalImage,
        url: "https://thumbs.subefotos.com/8ac1f349de233799c396c5128add7d58o.jpg"
      )
    ],
    concepts: <Concept>[
      Concept(
        name: "Mapa de Karnaugh",
        definition: "Es un diagrama utilizado para la simplificación de funciones algebraicas Booleanas. Fue creado por el físico-matemático Maurice Karnaugh"
      )
    ],
  )
];
