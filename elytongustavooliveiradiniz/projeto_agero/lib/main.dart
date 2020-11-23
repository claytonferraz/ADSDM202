import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    HomePage.tag: (context) => HomePage(),
    AboutPage.tag: (context) => AboutPage()
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AGERO',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomePage(),
      routes: routes,
    );
  }
}
