import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:projeto_agero/Data/DataBase.dart';
import 'package:projeto_agero/Models/Abordagem.model.dart';
import 'package:flutter/material.dart';

class AbordagemProvider with ChangeNotifier {
  final Map<String, Abordagem> _items = {...dataAbordagem};

  List<Abordagem> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Abordagem byIndex(int index) {
    return _items.values.elementAt(index);
  }

  void put(Abordagem abordagem) {
    if (abordagem == null) {
      return;
    }
    if (abordagem.idAbordagem != null &&
        abordagem.idAbordagem.trim().isNotEmpty &&
        _items.containsKey(abordagem.idAbordagem)) {
      _items.update(
        abordagem.idAbordagem,
        (_) => Abordagem(
            idAbordagem: abordagem.idAbordagem,
            nomeDaEmpresa: abordagem.nomeDaEmpresa,
            prefixo: abordagem.prefixo,
            placa: abordagem.placa,
            origem: abordagem.origem,
            destino: abordagem.destino,
            quantidadeDePassageiros: abordagem.quantidadeDePassageiros),
      );
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => Abordagem(
          idAbordagem: id,
          nomeDaEmpresa: abordagem.nomeDaEmpresa,
          prefixo: abordagem.prefixo,
          placa: abordagem.placa,
          origem: abordagem.origem,
          destino: abordagem.destino,
          quantidadeDePassageiros: abordagem.quantidadeDePassageiros,
        ),
      );
    }
    notifyListeners();
  }

  void remove(Abordagem abordagem) {
    if (abordagem != null && abordagem.idAbordagem != null) {
      _items.remove(abordagem.idAbordagem);
      notifyListeners();
    }
  }
}
