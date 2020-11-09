import 'package:mobx/mobx.dart';

import 'usuario_model.dart';
import 'usuario_repository.dart';
part 'usuario_controller.g.dart';

class UsuarioController = _UsuarioControllerBase with _$UsuarioController;

abstract class _UsuarioControllerBase with Store {
  final UsuarioRepository repository;

  _UsuarioControllerBase(this.repository) {
    setListUsuarios();
  }

  @observable
  ObservableList<UsuarioModel> _listUsuarios;
  // List<UsuarioModel> listUsuarios = [];

  @action
  //void setListUsuarios() => listUsuarios = repository.getUsuario().asObservable();
  Future<void> setListUsuarios() async {
    _listUsuarios =
        ObservableList<UsuarioModel>.of(await repository.getUsuario());
    // print("controller: $_listUsuarios");
  }

  @computed
  List<UsuarioModel> get listUsuarios => _listUsuarios;

  @observable
  int _id;

  @action
  void setId(int value) => _id = value;

  @computed
  int get id => _id;

  @observable
  String _nome = '';

  @action
  void setNome(String value) => _nome = value;

  @computed
  bool get nomeIsValid => _nome.trim().length > 3;
  String get nomeError => nomeIsValid == true ? null : "Nome inválido";

  @observable
  String _email = '';

  @action
  void setEmail(String value) => _email = value;

  @computed
  bool get emailIsValid => _email.trim().length > 3;
  String get emailError => emailIsValid == true ? null : "Email inválido";

  @observable
  String _senha = '';

  @action
  void setSenha(String value) => _senha = value;

  @computed
  bool get senhaIsValid => _senha.trim().length > 3;
  String get senhaError => senhaIsValid == true ? null : "Senha inválida";

  @computed
  bool get allValid => nomeIsValid && emailIsValid && senhaIsValid;

  @action
  Future<bool> saveUsuario() async {
    bool status = await repository.setUsuario(
      UsuarioModel(
        email: _email,
        nome: _nome,
        senha: _senha,
      ),
    );
    await setListUsuarios();
    return status;
  }

  @action
  Future<bool> updateUsuario() async {
    bool status = await repository.updateUsuario(
      UsuarioModel(
        id: _id,
        email: _email,
        nome: _nome,
        senha: _senha,
      ),
    );
    await setListUsuarios();
    return status;
  }

  @action
  Future<bool> deleteItem(UsuarioModel usuario) async {
    var status = false;
    status = await repository.deleteUsuario(usuario);
    await setListUsuarios();
    return status;
  }
}
