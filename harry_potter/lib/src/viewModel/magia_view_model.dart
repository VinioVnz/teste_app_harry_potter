import 'package:flutter/material.dart';
import 'package:harry_potter/src/model/magia_model.dart';
import 'package:harry_potter/src/service/hp_api_service.dart';
import 'package:http/http.dart' as http;

class MagiaViewModel extends ChangeNotifier {
  final HpApiService service;

  MagiaViewModel({required this.service});

  List<MagiaModel> magias = [];
  bool isLoading = false;
  String? error;

  Future<void> getAllMagias() async {
    isLoading = true;
    notifyListeners();

    try {
      magias = await service.getSpells();
    } catch (e) {
      error = "Erro ao carregar as magias";
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
