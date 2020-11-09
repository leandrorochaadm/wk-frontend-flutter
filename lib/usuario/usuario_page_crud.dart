import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:wk/usuario/usuario_controller.dart';
import 'package:wk/usuario/usuario_model.dart';

class UsuarioPageCrud extends StatefulWidget {
  const UsuarioPageCrud({this.usuario, Key key}) : super(key: key);

  static final tag = "usuarioCrud";
  final UsuarioModel usuario;

  @override
  _UsuarioPageCrudState createState() => _UsuarioPageCrudState();
}

class _UsuarioPageCrudState extends State<UsuarioPageCrud> {
  @override
  Widget build(BuildContext context) {
    UsuarioController controller = Provider.of(context);
    if (widget.usuario?.id != null) {
      controller.setId(widget.usuario.id);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadrastro de usuário"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool salvo = false;

          if (widget.usuario?.id != null) {
            salvo = await controller.updateUsuario();
          } else {
            salvo = await controller.saveUsuario();
          }

          if (salvo == true) {
            Navigator.pop(context);
          }
        },
        child: Icon(Icons.save),
      ),
      body: Observer(builder: (_) {
        return ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: TextFormField(
                initialValue: widget.usuario?.nome,
                onChanged: controller.setNome,
                decoration: InputDecoration(
                    labelText: "Nome", errorText: controller.nomeError),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: TextFormField(
                initialValue: widget.usuario?.email,
                onChanged: controller.setEmail,
                decoration: InputDecoration(
                    labelText: "Email", errorText: controller.emailError),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: TextFormField(
                initialValue: widget.usuario?.senha,
                onChanged: controller.setSenha,
                decoration: InputDecoration(
                    labelText: "Senha", errorText: controller.senhaError),
              ),
            ),
          ],
        );
      }),
    );
  }
}
