//https://catfact.ninja/facts?limit=15
import 'package:cats_app/models/models_facts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CatFactProvider {
  Future<List<CatFacts>> getCatFact() async {
    final response = await http.get('https://catfact.ninja/facts?limit=15');
    if (response.statusCode == 200) {
      final List<dynamic> catfactJson = json.decode(response.body);
      return catfactJson.map((json) => CatFacts.fromJson(json)).toList();
    } else {
      throw Exception('Error fetching cats');
    }
  }
}
