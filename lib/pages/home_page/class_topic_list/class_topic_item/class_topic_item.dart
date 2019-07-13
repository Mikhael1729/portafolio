import 'package:flutter/material.dart';

class ClassTopicItem extends StatelessWidget {
  final void Function() onTap;
  final int classNumber;
  final String title;
  final String description;

  ClassTopicItem({
    @required this.classNumber,
    @required this.title,
    @required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Class number.
        Container(
          width: 40,
          height: 40,
          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFF1D2030),
              border:
                  Border.all(color: Theme.of(context).accentColor, width: 1),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "$classNumber",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),

        // Titulo de la clase.
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                description,
                style: TextStyle(fontSize: 14),
                maxLines: 3,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),

        IconButton(
          icon: Icon(Icons.info),
          onPressed: onTap,
        )
      ],
    );
  }
}

