import 'package:dio/dio.dart';
import 'package:wk/usuario/usuario_model.dart';

class UsuarioRepository {
  var dio = Dio();

  UsuarioRepository() {
    getUsuario();
  }

  Future<List<UsuarioModel>> getUsuario() async {
    Response response =
        await dio.get('http://localhost:8080/wk-backend-wildfly/usuarios');
    List<UsuarioModel> list = [];
    for (var json in (response.data as List)) {
      list.add(UsuarioModel.fromMap(json));
      //print(json);
    }
    //  print("repository: $list");
    return list;
  }

  Future<bool> setUsuario(UsuarioModel usuario) async {
    print("Salvar usuario: ${usuario.toString()}");
    try {
      Response response = await dio.post(
          'http://localhost:8080/wk-backend-wildfly/usuarios',
          data: usuario.toJson());
      return response.statusCode == 201;
    } catch (e) {
      print("Erro post usuario: $e");
      return false;
    }
  }

  Future<bool> updateUsuario(UsuarioModel usuario) async {
    print("Update usuario: ${usuario.toString()}");
    try {
      Response response = await dio.put(
          'http://localhost:8080/wk-backend-wildfly/usuarios/${usuario.id}',
          data: usuario.toJson());
      return response.statusCode == 202;
    } catch (e) {
      print("Erro put usuario: $e");
      return false;
    }
  }

  Future<bool> deleteUsuario(UsuarioModel usuario) async {
    // print("delete: $usuario");
    Response response = await dio.delete(
        'http://localhost:8080/wk-backend-wildfly/usuarios/${usuario.id}');
  }
}
