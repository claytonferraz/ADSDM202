import 'package:flutter/material.dart';
import 'package:projeto_agero/Provider/Abordagem.provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AbordagemProvider abordagemProvider = Provider.of(context);
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('AGERO'),
      ),
      body: abordagemProvider.count == 0
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ":(",
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Não há cadastro'),
                ],
              ),
            )
          : Text('S'),
    );
  }
}
