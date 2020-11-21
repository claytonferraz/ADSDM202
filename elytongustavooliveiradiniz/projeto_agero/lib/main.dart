import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_agero/data/views/abordagem_list.dart';

Void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AGERO ABORDAGENS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AbordagemLista(),
    );
  }
}
