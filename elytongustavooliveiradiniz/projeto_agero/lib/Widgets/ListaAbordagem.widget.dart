import 'package:flutter/material.dart';
import 'package:projeto_agero/Models/Abordagem.model.dart';

class ListaAbordagem extends StatelessWidget {
  final Abordagem abordagem;
  const ListaAbordagem(this.abordagem);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.car_rental),
      ),
      title: Text(abordagem.nomeDaEmpresa),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.amber,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );

    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.pages),
      ),
      title: Text(abordagem.nomeDaEmpresa),
      subtitle: Text(abordagem.prefixo),
      trailing: Container(
        width: 100,
      ),
    );
  }
}
