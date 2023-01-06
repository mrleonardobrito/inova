import 'dart:convert';

import 'package:inova/data/models/conhecimentos.dart';

import 'categoria.dart';
import 'colaborador.dart';

class Vaga {
  late final int id;
  late final String nome;
  late final int quantHoras;
  late final int vagasDisp;
  late final String proposta;
  late final String oQueIreiFazer;
  late final double avaliacaoUser;
  late final double? bolsaDisp;
  late final Orientador orientador;
  late final List<Colaborador>? coorientadores;
  late final List<ConhecimentoNecessario> conhecimentosNecessarios;
  late final List<ConhecimentoAoFinal> conhecimentosAoFinal;
  late final List<Categoria> categorias;

  Vaga(
      {required this.id,
      required this.nome,
      required this.quantHoras,
      required this.vagasDisp,
      required this.proposta,
      required this.oQueIreiFazer,
      required this.avaliacaoUser,
      required this.orientador,
      required this.conhecimentosNecessarios,
      required this.conhecimentosAoFinal,
      required this.categorias,
      this.coorientadores,
      this.bolsaDisp});

  static Vaga fromJson(Map<String, dynamic> json) {
    return Vaga(
        id: json['id'],
        nome: json['name'],
        quantHoras: json['quant_horas'],
        vagasDisp: json['vagas_disp'],
        proposta: json['proposta'],
        oQueIreiFazer: json['o_que_irei_fazer'],
        avaliacaoUser: json['avaliacao_user'],
        orientador: json['orientador'],
        coorientadores: json['coorientadores'],
        bolsaDisp: json['bolsa_disp'],
        conhecimentosNecessarios: json['conhecimentos_necessarios'],
        conhecimentosAoFinal: json['conhecimentos_ao_final'],
        categorias: json['categorias']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nome'] = nome;
    data['quant_horas'] = quantHoras;
    data['vagas_disp'] = vagasDisp;
    data['proposta'] = proposta;
    data['o_que_irei_fazer'] = oQueIreiFazer;
    data['avaliacao_user'] = avaliacaoUser;
    data['orientador'] = orientador.toJson();
    data['coorientadores'] = jsonEncode(coorientadores);
    data['bolsa_disp'] = bolsaDisp;
    data['conhecimentos_necessarios'] = jsonEncode(conhecimentosNecessarios);
    data['conhecimentos_ao_final'] = jsonEncode(conhecimentosAoFinal);
    data['categorias'] = jsonEncode(categorias);
    return data;
  }
}
