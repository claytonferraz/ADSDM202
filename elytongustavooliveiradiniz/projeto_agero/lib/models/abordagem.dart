import 'package:flutter/cupertino.dart';

class Abordagem {
  final String id;
  final String nome;
  final String prefixo;
  final String placa;
  final String origem;
  final String destino;

  const Abordagem({
    this.id,
    @required this.nome,
    @required this.prefixo,
    @required this.placa,
    @required this.origem,
    @required this.destino,
  });
}
