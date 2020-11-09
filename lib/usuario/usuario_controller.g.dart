// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UsuarioController on _UsuarioControllerBase, Store {
  Computed<List<UsuarioModel>> _$listUsuariosComputed;

  @override
  List<UsuarioModel> get listUsuarios => (_$listUsuariosComputed ??=
          Computed<List<UsuarioModel>>(() => super.listUsuarios,
              name: '_UsuarioControllerBase.listUsuarios'))
      .value;
  Computed<int> _$idComputed;

  @override
  int get id => (_$idComputed ??=
          Computed<int>(() => super.id, name: '_UsuarioControllerBase.id'))
      .value;
  Computed<bool> _$nomeIsValidComputed;

  @override
  bool get nomeIsValid =>
      (_$nomeIsValidComputed ??= Computed<bool>(() => super.nomeIsValid,
              name: '_UsuarioControllerBase.nomeIsValid'))
          .value;
  Computed<bool> _$emailIsValidComputed;

  @override
  bool get emailIsValid =>
      (_$emailIsValidComputed ??= Computed<bool>(() => super.emailIsValid,
              name: '_UsuarioControllerBase.emailIsValid'))
          .value;
  Computed<bool> _$senhaIsValidComputed;

  @override
  bool get senhaIsValid =>
      (_$senhaIsValidComputed ??= Computed<bool>(() => super.senhaIsValid,
              name: '_UsuarioControllerBase.senhaIsValid'))
          .value;
  Computed<bool> _$allValidComputed;

  @override
  bool get allValid =>
      (_$allValidComputed ??= Computed<bool>(() => super.allValid,
              name: '_UsuarioControllerBase.allValid'))
          .value;

  final _$_listUsuariosAtom =
      Atom(name: '_UsuarioControllerBase._listUsuarios');

  @override
  ObservableList<UsuarioModel> get _listUsuarios {
    _$_listUsuariosAtom.reportRead();
    return super._listUsuarios;
  }

  @override
  set _listUsuarios(ObservableList<UsuarioModel> value) {
    _$_listUsuariosAtom.reportWrite(value, super._listUsuarios, () {
      super._listUsuarios = value;
    });
  }

  final _$_idAtom = Atom(name: '_UsuarioControllerBase._id');

  @override
  int get _id {
    _$_idAtom.reportRead();
    return super._id;
  }

  @override
  set _id(int value) {
    _$_idAtom.reportWrite(value, super._id, () {
      super._id = value;
    });
  }

  final _$_nomeAtom = Atom(name: '_UsuarioControllerBase._nome');

  @override
  String get _nome {
    _$_nomeAtom.reportRead();
    return super._nome;
  }

  @override
  set _nome(String value) {
    _$_nomeAtom.reportWrite(value, super._nome, () {
      super._nome = value;
    });
  }

  final _$_emailAtom = Atom(name: '_UsuarioControllerBase._email');

  @override
  String get _email {
    _$_emailAtom.reportRead();
    return super._email;
  }

  @override
  set _email(String value) {
    _$_emailAtom.reportWrite(value, super._email, () {
      super._email = value;
    });
  }

  final _$_senhaAtom = Atom(name: '_UsuarioControllerBase._senha');

  @override
  String get _senha {
    _$_senhaAtom.reportRead();
    return super._senha;
  }

  @override
  set _senha(String value) {
    _$_senhaAtom.reportWrite(value, super._senha, () {
      super._senha = value;
    });
  }

  final _$setListUsuariosAsyncAction =
      AsyncAction('_UsuarioControllerBase.setListUsuarios');

  @override
  Future<void> setListUsuarios() {
    return _$setListUsuariosAsyncAction.run(() => super.setListUsuarios());
  }

  final _$saveUsuarioAsyncAction =
      AsyncAction('_UsuarioControllerBase.saveUsuario');

  @override
  Future<bool> saveUsuario() {
    return _$saveUsuarioAsyncAction.run(() => super.saveUsuario());
  }

  final _$updateUsuarioAsyncAction =
      AsyncAction('_UsuarioControllerBase.updateUsuario');

  @override
  Future<bool> updateUsuario() {
    return _$updateUsuarioAsyncAction.run(() => super.updateUsuario());
  }

  final _$deleteItemAsyncAction =
      AsyncAction('_UsuarioControllerBase.deleteItem');

  @override
  Future<bool> deleteItem(UsuarioModel usuario) {
    return _$deleteItemAsyncAction.run(() => super.deleteItem(usuario));
  }

  final _$_UsuarioControllerBaseActionController =
      ActionController(name: '_UsuarioControllerBase');

  @override
  void setId(int value) {
    final _$actionInfo = _$_UsuarioControllerBaseActionController.startAction(
        name: '_UsuarioControllerBase.setId');
    try {
      return super.setId(value);
    } finally {
      _$_UsuarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNome(String value) {
    final _$actionInfo = _$_UsuarioControllerBaseActionController.startAction(
        name: '_UsuarioControllerBase.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_UsuarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_UsuarioControllerBaseActionController.startAction(
        name: '_UsuarioControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_UsuarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String value) {
    final _$actionInfo = _$_UsuarioControllerBaseActionController.startAction(
        name: '_UsuarioControllerBase.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_UsuarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listUsuarios: ${listUsuarios},
id: ${id},
nomeIsValid: ${nomeIsValid},
emailIsValid: ${emailIsValid},
senhaIsValid: ${senhaIsValid},
allValid: ${allValid}
    ''';
  }
}
