import 'package:flutter/material.dart';
import 'package:portafolio/components/carousel.dart';
import 'package:portafolio/components/my_fade_transition.dart';
import 'package:portafolio/models/class_topic.dart';
import 'class_topic_card/class_topic_card.dart';
import 'class_topic_page/class_topic_page.dart';

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
                      child: Icon(_listMode ? Icons.list : Icons.library_books, color: Colors.white),
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: _listMode
                  ? ListViewImplementation()
                  : CarouselImplementation(),
            ),
          ),

          Divider(color: Colors.transparent),
        ],
      ),
    );
  }
}

class TopicClassItem extends StatelessWidget {
  final void Function() onTap;
  final int classNumber;
  final String title;
  final String description;

  TopicClassItem({
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

class ListViewImplementation extends StatelessWidget {
  void Function() _onTapItem(BuildContext context, ClassTopic topic) {
    return () {
      // Finding selected class topic.
      final match = points.firstWhere((t) => t.id == topic.id);

      Navigator.pushNamed(
        context,
        ClassTopicPage.routeName,
        arguments: match,
      );
    };
  }

  Widget _buildTopicClassItem(BuildContext context, int index) {
    return TopicClassItem(
      classNumber: points[index].id,
      description: points[index].content,
      title: points[index].title,
      onTap: _onTapItem(context, points[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(color: Colors.grey),
      itemCount: points.length,
      itemBuilder: _buildTopicClassItem,
    );
  }
}

class CarouselImplementation extends StatelessWidget {
  Widget Function(dynamic) _building(BuildContext context) =>
      (dynamic topic) => ClassTopicCard(
            onTap: () => _onTap(context, topic),
            classNumber: topic.id,
            content: topic.content,
            imageUrl: topic.coverImage,
            title: topic.title,
          );

  void _onTap(BuildContext context, ClassTopic topic) {
    // Finding selected class topic.
    final match = points.firstWhere((t) => t.id == topic.id);

    Navigator.pushNamed(
      context,
      ClassTopicPage.routeName,
      arguments: match,
    );
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final height = media.size.height;

    return Container(
      height: height >= 720 ? 400 : 350,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Center(
        child: Carousel(items: points, buildItem: _building(context)),
      ),
    );
  }
}
