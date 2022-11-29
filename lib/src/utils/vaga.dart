class VagaLista {
  late List<Vaga> vagas;

  VagaLista({required this.vagas});

  VagaLista.fromJson(Map<String, dynamic> json) {
    if (json['vagas'] != null) {
      vagas = <Vaga>[];
      json['vagas'].forEach((vaga) {
        print(vagas);
        vagas.add(Vaga.fromJson(vaga));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['vagas'] = vagas.map((v) => v.toJson()).toList();
    return data;
  }

  @override
  String toString() {
    return 'quantidade: ${vagas.length} vagas: ${vagas.join(',\n')}';
  }
}

class Vaga {
  final String titulo;
  final String descricao;
  final String horas;
  final String vagasDisponiveis;
  final String bolsaDisponivel;
  final List<dynamic> professores;
  final List<dynamic> categorias;

  const Vaga(
      {required this.titulo,
      required this.descricao,
      required this.horas,
      required this.professores,
      required this.categorias,
      required this.vagasDisponiveis,
      required this.bolsaDisponivel});

  static Vaga fromJson(Map<String, dynamic> json) {
    return Vaga(
        titulo: json['titulo'],
        descricao: json['descricao'],
        horas: json['horas'],
        professores: json['professores'],
        categorias: json['categorias'],
        vagasDisponiveis: json['vagasDisponiveis'],
        bolsaDisponivel: json['bolsaDisponivel']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['titulo'] = titulo;
    data['descricao'] = descricao;
    data['horas'] = horas;
    data['professores'] = professores;
    data['categorias'] = categorias;
    data['vagasDisponiveis'] = vagasDisponiveis;
    data['bolsaDisponivel'] = bolsaDisponivel;
    return data;
  }

  @override
  String toString() {
    return '{ titulo: $titulo, descricao: $descricao, horas: $horas, professores: $professores, categorias: $categorias, vagas disponíveis: $vagasDisponiveis, bolsa disponível: $bolsaDisponivel }';
  }
}
