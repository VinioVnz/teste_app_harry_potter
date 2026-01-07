import 'package:harry_potter/src/model/magia_model.dart';
import 'package:harry_potter/src/model/personagem_model.dart';
import 'package:harry_potter/src/service/hp_api_service.dart';

class FakeHpApiServiceSuccess implements HpApiService {
  @override
  Future<List<PersonagemModel>> getAllCharacters() async {
    return [
      PersonagemModel(
        id: "fakeid",
        name: 'Harry Potter',
        house: 'Gryffindor',
        image: 'https://ik.imagekit.io/hpapi/harry.jpg',
        actor: 'fakeActor',
        species: 'human',
        alternativeNames: [''],
      ),
      PersonagemModel(
        id: "fakeid",
        name: 'Draco Malfoy',
        house: 'Slytherin',
        image: 'https://ik.imagekit.io/hpapi/harry.jpg',
        actor: 'fakeActor',
        species: 'human',
        alternativeNames: [''],
      ),
    ];
  }

  @override
  Future<List<PersonagemModel>> getCharactersByHouse(String house) async {
    return [
      PersonagemModel(
        id: "fakeid",
        name: 'Harry Potter',
        house: house,
        image: 'https://ik.imagekit.io/hpapi/harry.jpg',
        actor: 'fakeActor',
        species: 'human',
        alternativeNames: [''],
      ),
    ];
  }

  @override
  Future<List<MagiaModel>> getSpells() async {
    return [
      MagiaModel(id: '1', name: 'Accio', description: 'Summons objects'),
      MagiaModel(id: '2', name: 'Lumos', description: 'Creates light'),
    ];
  }
}

class FakeHpApiServiceError implements HpApiService {
  @override
  Future<List<PersonagemModel>> getAllCharacters() async {
    throw Exception('Erro');
  }

  @override
  Future<List<PersonagemModel>> getCharactersByHouse(String house) async {
    throw Exception('Erro');
  }

  @override
  Future<List<MagiaModel>> getSpells() async {
    throw Exception('Erro ao buscar magias');
  }
}
