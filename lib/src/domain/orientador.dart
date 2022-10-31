import 'package:uuid/uuid.dart';

class Orientador {
  late final Uuid id;
  late final Uuid idAuth;
  late final String urlImage;
  late final String name;
  late final String descricao;

  Orientador(
      {required this.id,
      required this.idAuth,
      required this.urlImage,
      required this.name,
      required this.descricao});

  Orientador.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idAuth = json['id_auth'];
    urlImage = json['url_image'];
    name = json['name'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_auth'] = this.idAuth;
    data['url_image'] = this.urlImage;
    data['name'] = this.name;
    data['descricao'] = this.descricao;
    return data;
  }
}
