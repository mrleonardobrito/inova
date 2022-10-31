import 'package:uuid/uuid.dart';

class Vaga {
  late final int id;
  late final Uuid idColaborador;
  late final String nome;
  late final int quantHoras;
  late final int vagasDisp;
  late final String proposta;
  late final String oQueIreiFazer;
  late final double avaliacaoUser;
  late final double? bolsaDisp;

  Vaga(
      {required this.id,
      required this.idColaborador,
      required this.nome,
      required this.quantHoras,
      required this.vagasDisp,
      required this.proposta,
      required this.oQueIreiFazer,
      required this.avaliacaoUser,
      this.bolsaDisp});

  static Vaga fromJson(Map<String, dynamic> json) {
    return Vaga(
        id: json['id'],
        idColaborador: json['id_colaborador'],
        nome: json['nome'],
        quantHoras: json['quant_horas'],
        vagasDisp: json['vagas_disp'],
        proposta: json['proposta'],
        oQueIreiFazer: json['o_que_irei_fazer'],
        avaliacaoUser: json['avaliacao_user'],
        bolsaDisp: json['bolsa_disp']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['id_colaborador'] = idColaborador;
    data['nome'] = nome;
    data['quant_horas'] = quantHoras;
    data['vagas_disp'] = vagasDisp;
    data['proposta'] = proposta;
    data['o_que_irei_fazer'] = oQueIreiFazer;
    data['avaliacao_user'] = avaliacaoUser;
    data['bolsa_disp'] = bolsaDisp;
    return data;
  }
}
