import 'package:flutter/material.dart';
import 'package:harry_potter/src/model/personagem_model.dart';
import 'package:harry_potter/src/utils/casas_name.dart';

class PersonagemDetalheView extends StatelessWidget {
  final PersonagemModel personagem;

  PersonagemDetalheView({super.key, required this.personagem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(personagem.name), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            personagem.image.isNotEmpty
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      personagem.image,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  )
                : const Icon(Icons.person, size: 150),

            const SizedBox(height: 20),

            _infoTile('Casa', houseNamePtBr(personagem.house)),
            _infoTile('Ator', personagem.actor),
            _infoTile('Espécie', personagem.species),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: const Text('Conhecido como'),
                  subtitle: personagem.alternativeNames.isEmpty
                      ? const Text('Não informado')
                      : Wrap(
                          spacing: 8,
                          runSpacing: 4,
                          children: personagem.alternativeNames
                              .map((name) => Chip(label: Text(name)))
                              .toList(),
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoTile(String title, String value) {
    return ListTile(
      title: Text(title),
      subtitle: Text(value.isEmpty ? 'Não informado' : value),
    );
  }
}
