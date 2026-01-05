import 'dart:convert';
import 'package:harry_potter/src/model/magia_model.dart';
import 'package:harry_potter/src/model/personagem_model.dart';
import 'package:http/http.dart' as http;


class HpApiService {
  static const String _baseUrl = 'https://hp-api.onrender.com/api';

  Future<List<PersonagemModel>> getAllCharacters() async {
    final response = await http.get(Uri.parse('$_baseUrl/characters'));

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => PersonagemModel.fromJson(e)).toList();
    } else {
      throw Exception('Erro ao buscar personagens');
    }
  }

  Future<List<PersonagemModel>> getCharactersByHouse(String house) async {
    final response =
        await http.get(Uri.parse('$_baseUrl/characters/house/$house'));

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => PersonagemModel.fromJson(e)).toList();
    } else {
      throw Exception('Erro ao buscar personagens da casa');
    }
  }

  Future<List<MagiaModel>> getSpells() async {
    final response = await http.get(Uri.parse('$_baseUrl/spells'));

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => MagiaModel.fromJson(e)).toList();
    } else {
      throw Exception('Erro ao buscar magias');
    }
  }
}