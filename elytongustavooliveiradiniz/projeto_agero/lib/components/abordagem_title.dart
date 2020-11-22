import 'package:flutter/material.dart';
import 'package:projeto_agero/models/abordagem.dart';

class AbordagemTitle extends StatelessWidget {
  final Abordagem abordagem;

  const AbordagemTitle(this.abordagem);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(abordagem.nome),
        subtitle: Text(abordagem.prefixo),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.blue,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
