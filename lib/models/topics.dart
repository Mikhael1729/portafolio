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
    content:
        "Nuestro primer encuentro con el profesor fue en el evento ElectronicDayRD2K19. En éste se presentaron varias conferencias, talleres y charlas del área de tecnología electro-informática. El evento se celebró en el salón P. Julio Soto del Instituto Técnico Salesiano - ITESA en horario de 8:00am a  05:00pm ",
    coverImageUrl:
        "https://thumbs.subefotos.com/3b7e33bf122edab01ff92e0dd72adbbao.jpg",
    resources: [
      Resource(
        id: 1,
        name: "Fragmento de la tabla de actividades",
        url:
            "https://thumbs.subefotos.com/b093a15a311e61f07eb4ed88441c85bao.jpg",
        type: ResourceType.externalImage,
      ),
    ],
  ),

  // Clase 2
  ClassTopic(
    id: 2,
    title: "Álgebra booleana y circuitos lógicos",
    content:
        "El álgebra booleana es una estructura algebraica que esquematiza las operaciones lógicas. En clase estuvimos viendo también lo que son puertas lógicas, que no son más que las aplicaciones básicas para con ellas formar circuitos lógicos. Existen varios métodos para para calcular el resultado de un conjunto de compuertas lógicas: Reducción de funciones y mapas de karnot",
    coverImageUrl:
        "https://thumbs.subefotos.com/9997eee327fd1bc025f17970ec70eedco.jpg",
    attachments: <Resource>[
      Resource(
          id: 2,
          name: "Tarea 1",
          description: "Convertir de decimal a binario",
          type: ResourceType.externalImage,
          url:
              "https://thumbs.subefotos.com/8ac1f349de233799c396c5128add7d58o.jpg"),
      Resource(
          id: 3,
          name: "Tabla de Código ASCII",
          url:
              "https://thumbs.subefotos.com/3d2895aa2a0841893250aa151cad2db6o.jpg")
    ],
    concepts: <Concept>[
      Concept(
          name: "Mapa de Karnaugh",
          definition:
              "Es un diagrama utilizado para la simplificación de funciones algebraicas Booleanas. Fue creado por el físico-matemático Maurice Karnaugh"),
    ],
  ),

  // Clase 3.
  ClassTopic(
    id: 3,
    title: "Elementos básicos de la computadora",
    content:
        "En la clase estuvimos viendo lo que fueron los conceptos de elementos básicos de la computadora,como la RAM, el CPU, Motherboard, etc.",
    coverImageUrl:
        "https://images-na.ssl-images-amazon.com/images/I/616LsnKkw-L._SX425_.jpg",
    attachments: [
      Resource(
        id: 4,
        name: "CPU",
        description: "Unidad Central de Procesamiento",
        url:
            "https://www.extremetech.com/wp-content/uploads/2017/05/core-i9-640x353.jpg",
      ),
      Resource(
        id: 5,
        name: "RAM",
        description: "Random Access Memory",
        url:
            "https://images-na.ssl-images-amazon.com/images/I/61mlx7jlbVL._SX425_.jpg",
      ),
      Resource(
        id: 6,
        name: "Diferencias entre BIOS, CMOS y Setup",
        description: "Trabajo grupal de laboratorio",
        url:
            "https://thumbs.subefotos.com/f872d7ccaeb2279556e7bc57a0cf9267o.jpg",
      ),
    ],
    concepts: [
      Concept(
        name: "¿Qué es universitario?",
        definition:
            "Ser universitario significa tener pasión por descubrir y conocer la verdad, tener sed por aprender y hambre de poder explicar el porqué de los fenómenos que observamos.",
      ),
      Concept(
        name: "BIOS",
        definition:
            "Es un sistema básico de entrada/salida Basic Input- Output System (BIOS) un código de interfaz que localiza y carga el sistema operativo en la RAM",
      ),
      Concept(
        name: "Setup",
        definition:
            "Es el software desde el cual, puedes cambiar los ajustes del BIOS.",
      ),
      Concept(
        name: "RAM",
        definition: "Random Access Memory",
      ),
      Concept(
        name: "CPU",
        definition:
            "Unidad Central de Procesamiento (Central Processing Unit en inglés)",
      ),
      Concept(
        name: "Motherboard",
        definition:
            "Es la tarjeta de circuito impreso a la que se conectan los componentes que constituyen la computadora.",
      ),
    ],
  ),

  // Clase 4.
  ClassTopic(
    id: 4,
    title: "Organización de la computadora",
    content:
        "En clase de laboratorio estuvimos viendo algunos de los componentes principales de la computadora. También estuvimos haciendo las explicaciones pertinentes",
    coverImageUrl:
        "https://claseejecutiva.emol.com/wp-content/uploads/2018/09/equipos.png",
    attachments: [
      Resource(
        id: 7,
        name: "Organización de la computadora",
        description: "Explicación de clase",
        url:
            "https://drive.google.com/open?id=0B0zNoW52exrEaUg1WEYtVUhwV1lFek83MlZkMTJsTHp1WnFR",
        type: ResourceType.other,
      ),
      Resource(
        id: 8,
        name: "Elementos el motherboard, RAM y CPU",
        description: "Tarea de laboratorio",
        url:
            "https://drive.google.com/open?id=0B0zNoW52exrEWmttdTk1ZTBwNE5kdjRILWpDMFFsQXRMeXNj",
        type: ResourceType.other,
      ),
      Resource(
        id: 9,
        name: "Preguntas sobre la computadora",
        description: "Práctica de laboratorio",
        url:
            "https://thumbs.subefotos.com/460a13816ea68ef01034e2406dfcf756o.jpg",
      ),
    ],
    concepts: [
      Concept(
        name: "Día de los matemáticos",
        definition: "Es el 31 de mayo",
      ),
      Concept(
          name: "Mitos y tabúes",
          definition:
              "Clon y genética, CPU como computador, CPU como cerebro, Nada hay seguro"),
    ],
  ),

  // Clase 5.
  ClassTopic(
    id: 5,
    title: "IoT, PS, ALU y Assembler",
    content:
        "En clase tuvimos una charla sobre IoT, sobre la Unidad Aritemética Lógica (ALU) nuestros primeros pasos en Assembler, el lenguaje m[as difícil de las computadoras. Más abajo detallo en algunos de los conceptos.",
    coverImageUrl:
        "https://thumbs.subefotos.com/3c7044a3c7f3a1a84cfb19eb24638dc0o.jpg",
    resources: [
      Resource(
        id: 1,
        name: "Ideología de género contra el sentido común",
        description: "Video de YouTube",
        url: "https://youtu.be/MJu3wgyjCzA",
        type: ResourceType.externalVideo,
      ),
      Resource(
        id: 2,
        name: "Material de estudio para IoT",
        description: "Documento en PDF",
        url:
            "https://drive.google.com/open?id=0B0zNoW52exrEVUk0NDJjRnpnc1ZyOE9yYkdRUkRpaU1uckxj",
        type: ResourceType.other,
      ),
    ],
    urls: [
      UrlResource(
        id: 1,
        title: "Hackers al asecho vea un ejercicio de hackeo",
        url:
            "https://noticiassin.com/2016/06/hackers-al-acecho-vea-un-ejercicio-de-hackeo-que-lo-dejara-con-la-boca-abierta/",
      )
    ],
    concepts: [
      Concept(
          name: "IoT",
          definition:
              "(Internet of Things) o Internet de las cosas, es un concepto opara hacer referencia a cualquier objeto de la vida cotidiana conectado a Internet y es indentificable"),
      Concept(
          name: "ALU",
          definition:
              "(Unidad Aritmética Lógica) es un circuito digital que calcula operaciones aritméticas (como suma, resta, multiplicación, etc.) y operaciones lógicas (si, y, o, no), entre valores (generalmente uno o dos) de los argumentos."),
    ],
  ),

  
];
