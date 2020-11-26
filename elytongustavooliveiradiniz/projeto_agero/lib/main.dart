import 'package:flutter/material.dart';
import 'package:projeto_agero/Provider/Abordagem.provider.dart';
import 'package:projeto_agero/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AbordagemProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'AGERO',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
