import 'package:flutter/material.dart';
import 'package:harry_potter/src/view/detalhes_views/personagem_detalhe_view.dart';
import 'package:harry_potter/src/viewModel/personagens_view_model.dart';
import 'package:harry_potter/src/widgets/house_dropdown.dart';
import 'package:harry_potter/src/widgets/personagem_card.dart';
import 'package:provider/provider.dart';

class PersonagensView extends StatefulWidget {
  const PersonagensView({super.key});

  @override
  State<PersonagensView> createState() => _PersonagensViewState();
}

class _PersonagensViewState extends State<PersonagensView> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<PersonagensViewModel>().getAllCharacters();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PersonagensViewModel>();

    if (viewModel.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (viewModel.error != null) {
      return Center(child: Text(viewModel.error!));
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: HouseDropdown(
                  value: viewModel.casaSelecionada,
                  onChanged: (casa) {
                    context.read<PersonagensViewModel>().filterByHouse(casa);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.75,
              ),
              itemCount: viewModel.personagensFiltrados.length,
              itemBuilder: (context, index) {
                final personagem = viewModel.personagensFiltrados[index];
                return PersonagemCard(
                  personagem: personagem,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            PersonagemDetalheView(personagem: personagem),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
