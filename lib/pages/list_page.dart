import 'package:flutter/material.dart';

import 'package:penumbra_mobile/model/format.dart';
import 'package:penumbra_mobile/data/data.dart';

import 'package:penumbra_mobile/pages/detail_page.dart';
import 'package:penumbra_mobile/pages/web_view.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  @override
  void initState() {
    lessons = getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Format format) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                // alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(right: 12.0),
                decoration: new BoxDecoration(
                  border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24),
                  ),
                ),
                child: Icon(
                  format.isProprietary
                      ? Icons.assignment_ind
                      : Icons.assignment,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          title: Text(
            format.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  'Popularity:',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  // tag: 'hero',
                  child: LinearProgressIndicator(
                    backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                    value: format.popularity,
                    valueColor: AlwaysStoppedAnimation(
                      Color(0xff00e7ff),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('|', style: TextStyle(color: Colors.white)),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  format.format,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(format: format),
              ),
            );
          },
        );

    Card makeCard(Format format) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: makeListTile(format),
          ),
        );

    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(
        widget.title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.touch_app), // TODO: 3d_rotation
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WebViewPage(),
              ),
            );
          },
        )
      ],
    );

    final makeBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: makeBody,
      // bottomNavigationBar: makeBottom,
    );
  }
}
