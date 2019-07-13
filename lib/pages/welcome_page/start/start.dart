import 'package:flutter/material.dart';
import 'package:portafolio/components/my_fade_transition/my_fade_transition.dart';
import 'package:portafolio/layouts/main_layout/main_layout.dart';

class Start extends StatelessWidget {
  const Start({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      width: double.infinity,
      // color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Rounded Image.
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white70,
              ),
              child: Container(
                width: 80,
                height: 80,
                child: Image(
                  image: AssetImage("lib/images/start.png"),
                ),
              ),
            ),

            Divider(color: Colors.transparent),

            // Welcome.
            Text(
              "Es hora de empezar",
              style: TextStyle(
                fontSize: 36,
              ),
              textAlign: TextAlign.center,
            ),

            Divider(
              color: Colors.transparent,
              height: 30,
            ),

            // My data.
            Text(
              "De acuerdo a los lineamientos de esta tarea mi portafolio tiene las siguientes 3 secciones: \"Clases\" (los aprendizajes con evidencias), \"Reflexiones/Dudas\" y Conclusiones...",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),

            Divider(
              color: Colors.transparent,
              height: 60,
            ),

            // Next button.
            MyFadeTransition(
              minimum: 0.6,
              child: MaterialButton(
                onPressed: () => Navigator.pushNamed(
                      context,
                      MainLayout.routeName,
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("¡Empecemos!",
                        style:
                            TextStyle(color: Colors.lightBlue, fontSize: 16)),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.lightBlue,
                      size: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
