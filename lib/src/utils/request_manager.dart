import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:whatinif/src/utils/vaga.dart';

class RequestManager {
  final resultNotifier = ValueNotifier<RequestState>(RequestInicial());
  static const url = "http://localhost:3000/api/vagas";

  Future<void> getVagas() async {
    resultNotifier.value = RequestLoadInProgress();
    final urlParsed = Uri.parse(url);
    http.Response response = await http.get(urlParsed);  
    _handleResponse(response);
  }

  void _handleResponse(http.Response response){
    if (response.statusCode >= 400) {
      resultNotifier.value = RequestLoadFailure();
    } else {
      Map<String, dynamic> parsedVagas = jsonDecode(response.body);
      resultNotifier.value = RequestLoadSuccess(VagaLista.fromJson(parsedVagas));
    }
  }
}

class RequestState {
  const RequestState();
}

class RequestInicial extends RequestState {}

class RequestLoadInProgress extends RequestState {}

class RequestLoadFailure extends RequestState {}

class RequestLoadSuccess extends RequestState {
  final VagaLista vagalista;

  const RequestLoadSuccess(this.vagalista);
}
