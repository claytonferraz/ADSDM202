import 'package:flutter/material.dart';

class Layout {
  static Scaffold getContent(BuildContext context, content) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text('AGERO'),
        ),
      ),
      body: content,
    );
  }
}
