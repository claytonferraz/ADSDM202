import 'package:flutter/material.dart';

class AbordagemAdd extends StatelessWidget {
  TextEditingController _controllerText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: () {
          Navigator.pop(
              context,
              _controllerText.text =
                  _controllerText.text.isEmpty ? '' : _controllerText.text);
        },
        child: Icon(Icons.done),
      ),
      appBar: AppBar(
        title: Text('Nova Abordagem'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Nome Da Empresa'),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _controllerText,
                ),
              )
            ],
          )),
    );
  }
}
