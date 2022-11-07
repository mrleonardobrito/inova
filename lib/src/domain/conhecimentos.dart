class ConhecimentoAoFinal {
  int id;
  String conhecimento;

  ConhecimentoAoFinal({required this.id, required this.conhecimento});

  static ConhecimentoAoFinal fromJson(Map<String, dynamic> json) {
    return ConhecimentoAoFinal(
        id: json['id'], conhecimento: json['conhecimento']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['conhecimento'] = conhecimento;
    return data;
  }
}

class ConhecimentoNecessario {
  int id;
  String conhecimento;

  ConhecimentoNecessario({required this.id, required this.conhecimento});

  static ConhecimentoNecessario fromJson(Map<String, dynamic> json) {
    return ConhecimentoNecessario(
        id: json['id'], conhecimento: json['conhecimento']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['conhecimento'] = conhecimento;
    return data;
  }
}
