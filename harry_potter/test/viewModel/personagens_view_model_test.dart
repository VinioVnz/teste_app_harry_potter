import 'package:flutter_test/flutter_test.dart';
import 'package:harry_potter/src/viewModel/personagens_view_model.dart';
import '../mock/fake_hp_api_service.dart';

void main() {
  test('estado inicial deve estar correto', () {
    final vm = PersonagensViewModel(service: FakeHpApiServiceSuccess());

    expect(vm.personagens.isEmpty, true);
    expect(vm.personagensFiltrados.isEmpty, true);
    expect(vm.isLoading, false);
    expect(vm.error, null);
    expect(vm.casaSelecionada, 'all');
  });

  test('deve carregar todos os personagens', () async {
    final vm = PersonagensViewModel(service: FakeHpApiServiceSuccess());

    await vm.getAllCharacters();

    expect(vm.isLoading, false);
    expect(vm.error, null);
    expect(vm.personagens.length, 2);
    expect(vm.personagensFiltrados.length, 2);
  });

  test('deve filtrar personagens por casa', () async {
    final vm = PersonagensViewModel(service: FakeHpApiServiceSuccess());

    await vm.getAllCharacters();

    vm.filterByHouse('Gryffindor');

    expect(vm.casaSelecionada, 'Gryffindor');
    expect(vm.personagensFiltrados.length, 1);
    expect(vm.personagensFiltrados.first.house, 'Gryffindor');
  });

  test('filtro all deve retornar todos os personagens', () async {
    final vm = PersonagensViewModel(service: FakeHpApiServiceSuccess());

    await vm.getAllCharacters();

    vm.filterByHouse('all');

    expect(vm.personagensFiltrados.length, 2);
  });

  test('deve definir erro quando falhar ao carregar personagens', () async {
    final vm = PersonagensViewModel(service: FakeHpApiServiceError());

    await vm.getAllCharacters();

    expect(vm.isLoading, false);
    expect(vm.personagens.isEmpty, true);
    expect(vm.error, 'Erro ao carregar personagens');
  });

  test('deve definir erro ao buscar personagens por casa', () async {
    final vm = PersonagensViewModel(service: FakeHpApiServiceError());

    await vm.getCharactersByHouse('Gryffindor');

    expect(vm.isLoading, false);
    expect(vm.error, 'Erro ao carregar casa');
  });
}
