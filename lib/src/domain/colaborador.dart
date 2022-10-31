class Colaborador {
  late final String id;
  late final String idAuth;
  late final String urlImage;
  late final String name;
  late final String turma;
  late final String descricao;

  Colaborador(
      {required this.id,
      required this.idAuth,
      required this.urlImage,
      required this.name,
      required this.turma,
      required this.descricao});

  Colaborador.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idAuth = json['id_auth'];
    urlImage = json['url_image'];
    name = json['name'];
    turma = json['turma'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_auth'] = this.idAuth;
    data['url_image'] = this.urlImage;
    data['name'] = this.name;
    data['turma'] = this.turma;
    data['descricao'] = this.descricao;
    return data;
  }
}
