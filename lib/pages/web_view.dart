import 'package:flutter/material.dart';

class WebViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final returnBack = Positioned(
      left: 8.0,
      top: 42.0,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Color(0xff00e7ff),
          size: 32.0,
        ),
      ),
    );

    final stackWrapper = Stack(
      children: <Widget>[
        Center(
          child: Text(
            'This is web view',
            style: TextStyle(
              color: Color(0xffff1800),
              fontSize: 32.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        SizedBox(height: 80),
        returnBack,
      ],
    );

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[stackWrapper],
        ),
      ),
    );
  }
}
