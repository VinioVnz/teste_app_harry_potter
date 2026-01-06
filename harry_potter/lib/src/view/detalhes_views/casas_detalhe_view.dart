import 'package:flutter/material.dart';
import 'package:harry_potter/src/utils/casas_name.dart';
import 'package:harry_potter/src/view/detalhes_views/personagem_detalhe_view.dart';
import 'package:harry_potter/src/viewModel/personagens_view_model.dart';
import 'package:harry_potter/src/widgets/personagem_card.dart';
import 'package:provider/provider.dart';

class CasaDetalheView extends StatefulWidget {
  final String house;

  const CasaDetalheView({super.key, required this.house});

  @override
  State<CasaDetalheView> createState() => _CasaDetalheViewState();
}

class _CasaDetalheViewState extends State<CasaDetalheView> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() async {
      await context.read<PersonagensViewModel>().getAllCharacters();
      context.read<PersonagensViewModel>().filterByHouse(widget.house);
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PersonagensViewModel>();
    if (viewModel.error != null) {
      return Text('Erro ao carregar personagens');
    }
    return Scaffold(
      appBar: AppBar(title: Text(houseNamePtBr(widget.house)),centerTitle: true),
      body: viewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _houseDescription(widget.house),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),

                  const SizedBox(height: 24),

                  const Text(
                    'Personagens',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 12),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 0.75,
                          ),
                      itemCount: viewModel.personagensFiltrados.length,
                      itemBuilder: (context, index) {
                        final personagem =
                            viewModel.personagensFiltrados[index];
                        return PersonagemCard(
                          personagem: personagem,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => PersonagemDetalheView(
                                  personagem: personagem,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  String _houseDescription(String house) {
    switch (house) {
      case 'Gryffindor':
        return 'Grifinória valoriza coragem, ousadia e determinação.';
      case 'Slytherin':
        return 'Sonserina valoriza ambição, astúcia e liderança.';
      case 'Ravenclaw':
        return 'Corvinal valoriza inteligência, criatividade e sabedoria.';
      case 'Hufflepuff':
        return 'Lufa-Lufa valoriza lealdade, justiça e trabalho duro.';
      default:
        return '';
    }
  }
}
