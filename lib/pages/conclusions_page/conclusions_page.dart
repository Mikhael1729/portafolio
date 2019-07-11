import 'package:flutter/material.dart';
import 'package:portafolio/components/header_image/header_image.dart';

class ConclusionsPage extends StatelessWidget {
  const ConclusionsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Conclusiones (title).
              Text(
                "Conclusiones",
                softWrap: true,
                style: TextStyle(
                  fontSize: 36,
                ),
              ),

              Divider(color: Colors.transparent),

              Text(
                "Aprendí mucho en la clase.",
                style: TextStyle(fontSize: 18),
              ),

              Divider(color: Colors.transparent),

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18),
                  children: [
                    TextSpan(
                        text:
                            "Cuando me interesé por la programación me acuerdo que tenía muchísimas ansias por saber cómo programar en ensamblador ya que se dice que es el lenguaje de programación que a más "),
                    TextSpan(
                      text: "\"bajo nivel\" ",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    TextSpan(
                        text:
                            "de todos (aunque por ese entonces no entendía bien ese concepto) y me decía que si algún día llegar a programar aunque sea un Hello World en ensamblador, podría quitarme todas las dudas que tengo relacionadas con las computadoras. Obviamente ya no pienso así, pero las clases me han hecho recordar lo importante que era para mí llegar a aprender ensamblador, y sé que, de no haber estado en esta clase habría tardado mucho más en recordarlo e interesarme nuevamente en aprender ensamblador. En la clase descubrí las herramientas y cómo hacer un Hello World sencillo en ensamblador"),
                  ],
                ),
              ),

              Divider(color: Colors.transparent),

              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18),
                  children: [
                    TextSpan(
                        text:
                            "Otra de las cosas que de las que había escuchado y no entendía cómo funcionaba eran las "),
                    TextSpan(
                      text: "\"puertas lógicas\" ",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text:
                            "qe no son más que aplicaciones o estructuras que surgen del álgebra booleana"),
                  ],
                ),
              ),

              Divider(color: Colors.transparent),

              Text(
                "A continuación, mis conclsiones en una hoja de papel: (Nos vemos profesor. XP)",
                style: TextStyle(fontSize: 18),
              ),

              Divider(color: Colors.transparent, height: 40,),

              HeaderImage(
                imageUrl: "lib/images/thinking.jpg",
                isExternalImage: false,
                primaryText:
                    "Conversión de decimal a binario, álgebra booleana y operaciones en binario",
                secondaryText: "Conclusiones en papel",
                maxHeight: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
