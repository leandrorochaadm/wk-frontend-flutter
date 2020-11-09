import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'home/home_page.dart';
import 'usuario/usuario_controller.dart';
import 'usuario/usuario_page_crud.dart';
import 'usuario/usuario_page_list.dart';
import 'usuario/usuario_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<UsuarioController>.value(
            value: UsuarioController(UsuarioRepository())),
      ],
      child: MaterialApp(
        title: 'WK',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          buttonColor: Colors.red,
        ),
        initialRoute: HomePage.tag,
        routes: {
          UsuarioPageList.tag: (context) => UsuarioPageList(),
          UsuarioPageCrud.tag: (context) => UsuarioPageCrud(),
          UsuarioPageCrud.tag + "Params": (context) => UsuarioPageCrud(
              usuario: ModalRoute.of(context).settings.arguments),
          HomePage.tag: (context) => HomePage(),
        },
      ),
    );
  }
}
