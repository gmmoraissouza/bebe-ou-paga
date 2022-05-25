import 'dart:convert';

import 'package:http/http.dart' as http;

import 'advice.dart';

class GetAdvice{
  Uri url = Uri.parse('https://api.adviceslip.com/advice');

  String advice = '';

  Future getAdvice() async {
    http.Response response = await http.get(url);

    final parsed = json.decode(response.body);
    var conselho = Advice.fromJson(parsed);

    try {
      if (conselho.slip.id > 0) {

          advice = conselho.slip.advice;
      }
    } catch (e) {

        advice = 'Sei lá, meu! Apenas viva e passe a rodada';

    }
  }
}