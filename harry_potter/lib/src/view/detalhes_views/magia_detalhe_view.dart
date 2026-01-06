import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:harry_potter/src/model/magia_model.dart';
import 'package:harry_potter/src/utils/random_icon.dart';

class MagiaDetalheView extends StatelessWidget {
  final MagiaModel magia;
  const MagiaDetalheView({required this.magia, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(magia.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: FaIcon(RandomIcon.getRandomIcon(), size: 80, color: Colors.deepPurple),
            ),
            const SizedBox(height: 24),

            // Nome da magia
            Center(
              child: Text(
                magia.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              'Descrição:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              magia.description.isEmpty ? 'Não informado' : magia.description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
