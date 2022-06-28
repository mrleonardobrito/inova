class Vaga {
  final String titulo;
  final String descricao;
  final String horas;
  final String vagasDisponiveis;
  final String bolsaDisponivel;
  final List<String> professores;
  final List<String> categorias;

  const Vaga({
    required this.titulo,
    required this.descricao,
    required this.horas,
    required this.professores,
    required this.categorias,
    required this.vagasDisponiveis,
    required this.bolsaDisponivel
  });
}
