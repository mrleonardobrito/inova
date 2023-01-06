// ignore_for_file: constant_identifier_names

class Colaborador {
  late final String nome;
  late final String cargo;
  static const ORIENTADOR = 'orientador';
  static const COORIENTADOR = 'coorientador';
  static const BOLSISTA = 'bolsista';

  Colaborador({required this.nome, required this.cargo});

  static Colaborador fromJson(Map<String, dynamic> json) {
    return Colaborador(nome: json['name'], cargo: json['cargo']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nome'] = nome;
    data['cargo'] = cargo;
    return data;
  }
}

class Orientador {
  late final String nome;
  late final String cargo;
  Orientador({required this.nome, required this.cargo});

  static Orientador fromJson(Map<String, dynamic> json) {
    return Orientador(nome: json['name'], cargo: json['cargo']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = nome;
    data['cargo'] = cargo;
    return data;
  }
}
