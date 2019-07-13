import 'package:flutter/material.dart';
import 'package:portafolio/components/my_fade_transition/my_fade_transition.dart';
import 'class_topic_carousel/class_topic_carousel.dart';
import 'class_topic_list/class_topic_list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _listMode;

  @override
  void initState() {
    super.initState();
    _listMode = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Page title.
          Padding(
            padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Clases",
                  style: TextStyle(
                    fontSize: 36,
                  ),
                ),
                MyFadeTransition(
                  minimum: 0.6,
                  child: Container(
                    width: 40,
                    height: 40,
                    child: FloatingActionButton(
                      child: Icon(_listMode ? Icons.library_books : Icons.list,
                          color: Colors.white),
                      backgroundColor: Color(0xFF1D2030),
                      onPressed: () {
                        setState(() => _listMode = !_listMode);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Search bar.
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "Busca algo",
                fillColor: Colors.transparent,
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF1D2030),
                      width: 32.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF1D2030),
                    width: 32.0,
                  ),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),

          Divider(color: Colors.transparent),

          Expanded(
            child: _listMode
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: ClasTopicList(),
                  )
                : ClassTopicCarousel(),
          ),

          if(!_listMode)
            Divider(color: Colors.transparent),
        ],
      ),
    );
  }
}
