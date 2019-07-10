import 'package:flutter/material.dart';

class ClassTopicCard extends StatelessWidget {
  final int classNumber;
  final String title;
  final String content;
  final String imageUrl;
  final void Function() onTap;

  ClassTopicCard({
    this.classNumber,
    this.title,
    this.content,
    this.imageUrl,
    this.onTap,
  });

  double computeMaxHeight(BuildContext context) {
    final media = MediaQuery.of(context);
    final screenSize = media.size;

    if (screenSize.height >= 720)
      return 220;
    else
      return 190;
  }

  @override
  Widget build(BuildContext context) {
    computeMaxHeight(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Card(
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Portada
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  // Image
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: double.infinity,
                      maxHeight: computeMaxHeight(context),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                      child: Image(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Class number and title.
                  Container(
                    width: double.infinity,
                    color: Color(0x90000000),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Clase ${this.classNumber}"),
                          // Title.
                          Text(
                            this.title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Divider(color: Colors.transparent),

              // Content
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: Text(
                    this.content,
                    softWrap: true,
                    maxLines: 4,
                    style: TextStyle(fontSize: 16),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),

              Divider(color: Colors.transparent),

              // See more button.
              Expanded(
                child: Container(
                  alignment: Alignment.bottomLeft,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 24, 10),
                    child: FlatButton.icon(
                      onPressed: onTap,
                      icon: Icon(
                        Icons.info,
                        color: Theme.of(context).accentColor,
                      ),
                      label: Text(
                        "Leer más...",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
