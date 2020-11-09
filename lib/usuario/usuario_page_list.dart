import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:wk/usuario/usuario_controller.dart';
import 'package:wk/usuario/usuario_page_crud.dart';
import 'package:wk/usuario/usuario_widget_tile.dart';

class UsuarioPageList extends StatefulWidget {
  const UsuarioPageList({Key key}) : super(key: key);

  static final tag = "usuariolist";

  @override
  _UsuarioPageListState createState() => _UsuarioPageListState();
}

class _UsuarioPageListState extends State<UsuarioPageList> {
  @override
  Widget build(BuildContext context) {
    UsuarioController controller = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Usuário"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(UsuarioPageCrud.tag);
        },
        child: Icon(Icons.add),
      ),
      body: Observer(builder: (_) {
        var list = controller.listUsuarios;

        /* if (list.error != null) {
          return Center(
            child: Text("Ocorreu um erro"),
          );
        }*/

        if (list == null) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: list.length,
          itemBuilder: (_, index) {
            var usuario = list[index];
            return UsuarioTile(usuario);
          },
        );
      }),
    );
  }
}
