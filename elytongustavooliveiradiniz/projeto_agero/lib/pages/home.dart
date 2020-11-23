import 'package:flutter/material.dart';
import 'about.dart';
import 'package:projeto_agero/layout.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final content = Center(
        child: Column(
      children: <Widget>[
        Text('Bem vindo'),
        RaisedButton(
          child: Text('sobre'),
          onPressed: () {
            Navigator.of(context).pushNamed(AboutPage.tag);
          },
        )
      ],
    ));
    return Layout.getContent(context, content);
  }
}
