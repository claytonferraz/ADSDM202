import 'package:flutter/material.dart';
import 'package:projeto_agero/data/dummy_abordagem.dart';
import 'package:projeto_agero/components/abordagem_title.dart';

class AbordagemLista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final abordagem = {...DUMMY_ABORDAGEM};

    return Scaffold(
      appBar: AppBar(
        title: Text('LISTA DE ABORDAGEM'),
      ),
      body: ListView.builder(
        itemCount: abordagem.length,
        itemBuilder: (ctx, i) => AbordagemTitle(abordagem.values.elementAt(i)),
      ),
    );
  }
}
