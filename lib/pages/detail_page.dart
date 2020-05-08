import 'package:flutter/material.dart';

import 'package:penumbra_mobile/model/format.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class DetailPage extends StatelessWidget {
  final Format format;
  DetailPage({Key key, this.format}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final levelIndicator = Container(
      child: Container(
        child: LinearProgressIndicator(
          backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
          value: format.popularity,
          valueColor: AlwaysStoppedAnimation(
            Color(0xff00e7ff),
          ),
        ),
      ),
    );

    final topContentText = SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 42.0),
          Text(
            format.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 28.0,
                child: Divider(
                  color: Color(0xff00e7ff), // 0xffff1800
                  thickness: 4.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0, 0, 16.0),
                child: Text(
                  format.format,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  'Popularity:',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(flex: 1, child: levelIndicator),
              // Expanded(flex: 1, child: coursePrice)
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  'Use cases:',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  format.useCase,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Expanded(flex: 1, child: coursePrice)
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  'Posession type:',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                format.isProprietary ? 'Proprietary' : 'Neutral',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Expanded(flex: 1, child: coursePrice)
            ],
          ),
        ],
      ),
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 12.0,
          top: 32.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xff00e7ff),
              size: 26.0,
            ),
          ),
        ),
      ],
    );

    final bottomMainInfo = Text(
      format.mainInfo,
      style: TextStyle(fontSize: 18.0),
    );
    final separator = SizedBox(height: 24.0);
    final bottomDescription = Text(
      format.description,
      style: TextStyle(fontSize: 18.0),
    );
    final learnMoreButton = Container(
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        onPressed: () => launchURL(format.learnMore),
        color: Color(0xffff1800),
        child: Text(
          "LEARN MORE",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
      ),
    );

    final bottomContent = Container(
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color: Theme.of(context).primaryColor,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[
            bottomMainInfo,
            separator,
            bottomDescription,
            separator,
            learnMoreButton,
          ],
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[topContent, bottomContent],
        ),
      ),
    );
  }
}
