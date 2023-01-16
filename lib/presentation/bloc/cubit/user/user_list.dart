class ProjectItem {
  final int id;
  final String nome;
  final String descricao;
  final String nomeCoordenador;
  final String nomeColaborador;
  final String dataInicio;

  ProjectItem({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.nomeCoordenador,
    required this.nomeColaborador,
    required this.dataInicio,
  });

  static ProjectItem fromJson(Map<String, dynamic> json){
    return ProjectItem(
      id: json['id'],
      nome: json['title'],
      descricao: json['description'],
      nomeCoordenador: json['nomeCoordenador'],
      nomeColaborador: json['nomeColaborador'],
      dataInicio: json['dataInicio'],
    );
  }
}