import 'package:flutter/material.dart';
import 'package:harry_potter/src/model/personagem_model.dart';
import 'package:harry_potter/src/utils/casas_name.dart';

class PersonagemCard extends StatelessWidget {
  final PersonagemModel personagem;
  final VoidCallback? onTap;
  const PersonagemCard({super.key, required this.personagem, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                child: personagem.image.isNotEmpty
                    ? Image.network(
                        personagem.image,
                        errorBuilder: (_, __, ___) => const Icon(Icons.person),
                        fit: BoxFit.contain,
                      )
                    : const Icon(Icons.person),
              ),
              const SizedBox(height: 8),
              Text(
                personagem.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                houseNamePtBr(personagem.house),
                style: TextStyle(
                  
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
