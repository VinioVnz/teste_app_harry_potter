import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RandomIcon {
  // Lista de ícones que você quer usar para magias
  static final List<IconData> icones = [
    FontAwesomeIcons.hatWizard,
    FontAwesomeIcons.book,
    FontAwesomeIcons.wandMagic,
    FontAwesomeIcons.snowflake,
    FontAwesomeIcons.water,
    FontAwesomeIcons.skull,
  ];

  // Função que retorna um ícone aleatório
  static IconData getRandomIcon() {
    final random = Random();
    return icones[random.nextInt(icones.length)];
  }
}