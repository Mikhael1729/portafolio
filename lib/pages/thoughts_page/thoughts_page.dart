import 'package:flutter/material.dart';

final normalText = TextStyle(fontSize: 18);

class ThoughtsPage extends StatelessWidget {
  const ThoughtsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Dudas",
                softWrap: true,
                style: TextStyle(
                  fontSize: 36,
                ),
              ),

              Divider(color: Colors.transparent),

              // Introduction.
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 18),
                  children: [
                    TextSpan(
                        text:
                            "Al principio de la clase había tenido problemas con las conversiones entre los diferentes sistemas de numeración (binario, hexadecimal, decimal, ya que el método que todos enseñan para realizar la conversión, de por ejemplo, decimal a binario consiste en hacer divisiones sucesivas al cociente de la división entre dos del número que se desea convertir. Me preguntaba si habría una manera más sencilla. "),
                    TextSpan(
                      text: "¡Y la encontré! ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "Fue en el blog "),
                    TextSpan(
                      text: "\"Programación en lenguaje ensamblador\" ",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    TextSpan(
                        text:
                            "donde encontré el método que voy a explicar a continuación: ")
                  ],
                ),
              ),

              Divider(
                color: Colors.transparent,
              ),

              // Detail.
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 24),
                  children: [
                    TextSpan(text: "¿Cómo pasar "),
                    TextSpan(
                      text: "fácilmente",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "de decimal a binario?"),
                  ],
                ),
              ),

              Divider(color: Colors.transparent),

              Text(
                "El siguiente método consiste en realizar restas sucesivas con los divisores del dos desde el 128 hasta llegar al 1. Si la resta se puede hacer se anota un 1, si no, un 0",
                style: TextStyle(fontSize: 18),
              ),

              Divider(color: Colors.transparent),

              Text(
                  "1. Si se le puede restar 128, escribe un 1 y guarda la diferencia, si no, escribe 0",
                  style: normalText),

              Divider(color: Colors.transparent),
              
              Text(
                  "2. Si a la diferencia se le puede restar 64, escribe un 1, guarda la diferencia, y si no, escribe 0",
                  style: normalText),

              Divider(color: Colors.transparent),
              
              Text(
                  "3. Si a la diferencia se le puede restar 32, escribe un 1, guarda la diferencia, y si no, escribe 0",
                  style: normalText),

              Divider(color: Colors.transparent),
              
              Text(
                  "4. Si a la diferencia se le puede restar 16, escribe un 1, guarda la diferencia, y si no, escribe 0",
                  style: normalText),

              Divider(color: Colors.transparent),
              
              Text(
                  "5. Si a la diferencia se le puede restar 8, escribe un 1, guarda la diferencia, y si no, escribe 0",
                  style: normalText),

              Divider(color: Colors.transparent),
              
              Text(
                  "6. Si a la diferencia se le puede restar 4, escribe un 1, guarda la diferencia, y si no, escribe 0",
                  style: normalText),

              Divider(color: Colors.transparent),
              
              Text(
                  "7. Si a la diferencia se le puede restar 2, escribe un 1, guarda la diferencia, y si no, escribe 0",
                  style: normalText),

              Divider(color: Colors.transparent),
              
              Text(
                  "8. Si a la diferencia se le puede restar 1, escribe un 1, guarda la diferencia, y si no, escribe 0",
                  style: normalText),

              Divider(color: Colors.transparent),
              

              Divider(color: Colors.transparent),

              Text(
                  "Si al final de este paso el residuo es 0, el número convertido en binario es que el que ibas anotando. Ahora, en el caso contrario, no te preocupes, lo que debes hacer es repetir el procedimiento anterior para este residuo y así cuantos residuos te queden luego de finalizar el proceso. Luego  súmalos, y su suma es el número en binario que buscabas", style: normalText,),
            ],
          ),
        ),
      ),
    );
  }
}
