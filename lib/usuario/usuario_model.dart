import 'dart:convert';

class UsuarioModel {
  int id;
  String nome;
  String email;
  String telefone;
  String senha;

  UsuarioModel({
    this.id,
    this.nome,
    this.email,
    this.telefone,
    this.senha,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'telefone': telefone,
      'senha': senha,
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UsuarioModel(
      id: map['id'],
      nome: map['nome'],
      email: map['email'],
      telefone: map['telefone'],
      senha: map['senha'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) =>
      UsuarioModel.fromMap(json.decode(source));

  @override
  String toString() {
    return "nome: $nome, email: $email, telefone: $telefone";
  }
}
