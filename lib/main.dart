import 'package:flutter/material.dart';

import 'package:penumbra_mobile/pages/list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penumbra KB',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
        fontFamily: 'Raleway',
      ),
      home: ListPage(title: 'Penumbra KB'),
    );
  }
}
