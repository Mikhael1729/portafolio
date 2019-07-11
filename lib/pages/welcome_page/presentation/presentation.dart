import 'package:flutter/material.dart';
import 'package:portafolio/components/my_fade_transition.dart';

class Presentation extends StatelessWidget {
  final void Function() nextPage;
  const Presentation({Key key, @required this.nextPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      width: double.infinity,
      // color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Rounded Image.
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
            child: Container(
              width: 80,
              height: 80,
              child: Image(
                image: AssetImage("lib/images/portafolio.png"),
              ),
            ),
          ),

          Divider(color: Colors.transparent),

          // Welcome.
          Text(
            "Bienvenido a mi portafolio",
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
          Text("Mikhael Santos Fernández", style: TextStyle(fontSize: 18)),
          Text("1088621", style: TextStyle(fontSize: 18)),

          Divider(
            color: Colors.transparent,
            height: 60,
          ),
          // Next button.
          MyFadeTransition(
            minimum: 0.6,
            child: MaterialButton(
              onPressed: nextPage,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Siguiente",
                      style: TextStyle(color: Colors.lightBlue, fontSize: 16)),
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
    );
  }
}
