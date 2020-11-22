import 'package:flutter/material.dart';
import 'package:projeto_agero/data/views/aboradgem_add.dart';

class AbordagemLista extends StatefulWidget {
  @override
  _AbordagemListaState createState() => _AbordagemListaState();
}

class _AbordagemListaState extends State<AbordagemLista> {
  List<String> _list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: Icon(Icons.add),
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute<String>(
                builder: (context) {
                  return AbordagemAdd();
                },
              ),
            );
            setState(() {
              if (result.isNotEmpty) {
                _list.add(result);
              }
            });
          },
        ),
        appBar: AppBar(
          title: Text('LISTA DE ABORDAGEM'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
        ),
        body: _list.length > 0
            ? ListView.builder(
                itemCount: _list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(_list[index]),
                    ),
                  );
                },
              )
            : Center(
                child: Text('NÃO HÁ NENHUMA ABORAGEM'),
              ));
  }
}
