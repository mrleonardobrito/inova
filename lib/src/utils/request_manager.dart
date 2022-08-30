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
    try {
      http.Response response = await http.get(urlParsed);
      _handleResponse(response);
    } catch (err) {
      resultNotifier.value = RequestLoadFailure();
    }
  }

  void _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      Map<String, dynamic> decodedBody = jsonDecode(response.body);
      resultNotifier.value =
          RequestLoadSuccess(VagaLista.fromJson(decodedBody));
    } else {
      resultNotifier.value = RequestLoadFailure();
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
