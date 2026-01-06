import 'package:flutter/material.dart';
import 'package:harry_potter/src/model/personagem_model.dart';
import 'package:harry_potter/src/service/hp_api_service.dart';

class PersonagensViewModel extends ChangeNotifier {
  final HpApiService service;

  PersonagensViewModel({required this.service});
  String casaSelecionada = 'all';
  List<PersonagemModel> personagensFiltrados = [];
  List<PersonagemModel> personagens = [];
  bool isLoading = false;
  String? error;

  Future<void> getAllCharacters() async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      personagens = await service.getAllCharacters();

      filterByHouse(casaSelecionada);
      
    } catch (e) {
      error = 'Erro ao carregar personagens';
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getCharactersByHouse(String house) async {
    isLoading = true;
    notifyListeners();

    try {
      personagens = await service.getCharactersByHouse(house);
    } catch (e) {
      error = 'Erro ao carregar casa';
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  void filterByHouse(String house) {
    casaSelecionada = house;

    if (house == 'all') {
      personagensFiltrados = personagens;
    } else {
      personagensFiltrados = personagens
          .where((p) => p.house == house)
          .toList();
    }

    notifyListeners();
  }
}
