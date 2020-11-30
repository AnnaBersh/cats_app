import 'dart:convert';
import 'package:cats_app/models/models_image.dart';
import 'package:http/http.dart' as http;

class CatImgProvider {
  //https://api.thecatapi.com/v1/images/search

  Future<List<CatImg>> getCatImg() async {
    final response =
        await http.get('https://api.thecatapi.com/v1/images/search');
    if (response.statusCode == 200) {
      final List<dynamic> catimgJson = json.decode(response.body);
      return catimgJson.map((json) => CatImg.fromJson(json)).toList();
    } else {
      throw Exception('Error fetching cats');
    }
  }
}
