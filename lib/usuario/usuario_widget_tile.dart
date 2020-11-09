import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wk/usuario/usuario_controller.dart';
import 'package:wk/usuario/usuario_model.dart';

import 'usuario_page_crud.dart';

class UsuarioTile extends StatelessWidget {
  const UsuarioTile(this.usuario, {Key key}) : super(key: key);
  final UsuarioModel usuario;

  @override
  Widget build(BuildContext context) {
    UsuarioController controller = Provider.of(context);
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, UsuarioPageCrud.tag + "Params",
            arguments: usuario);
      },
      onLongPress: () {
        controller.deleteItem(usuario);
      },
      title: Text(
        usuario?.nome,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            usuario?.email,
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
