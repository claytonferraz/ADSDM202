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
    );
  }
}
