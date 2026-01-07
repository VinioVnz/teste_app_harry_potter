import 'package:flutter_test/flutter_test.dart';
import 'package:harry_potter/src/viewModel/magia_view_model.dart';
import '../mock/fake_hp_api_service.dart';

void main() {
  group('MagiaViewModel', () {
    test('deve carregar lista de magias com sucesso', () async {

      final viewModel = MagiaViewModel(
        service: FakeHpApiServiceSuccess(),
      );

      await viewModel.getAllMagias();

      expect(viewModel.isLoading, false);
      expect(viewModel.error, isNull);
      expect(viewModel.magias.isNotEmpty, true);
      expect(viewModel.magias.length, 2);
      expect(viewModel.magias.first.name, 'Accio');
    });

    test('deve setar erro quando serviço falhar', () async {

      final viewModel = MagiaViewModel(
        service: FakeHpApiServiceError(),
      );

      await viewModel.getAllMagias();

      expect(viewModel.isLoading, false);
      expect(viewModel.magias.isEmpty, true);
      expect(viewModel.error, 'Erro ao carregar as magias');
    });
  });
}