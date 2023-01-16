import 'package:uuid/uuid.dart';

class Usuario {
  late final Uuid id;
  late final String? urlImage;
  late final String? name;
  late final String? turma;
  late final String? descricao;

  Usuario(
      {required this.id, this.name, this.urlImage, this.descricao, this.turma});

  static Usuario fromJson(Map<String, dynamic> json) {
    return Usuario(
        id: json['id'],
        name: json['name'],
        urlImage: json['url_image'],
        descricao: json['descricao'],
        turma: json['turma']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['url_image'] = urlImage;
    data['descricao'] = descricao;
    data['turma'] = turma;
    return data;
  }
}
