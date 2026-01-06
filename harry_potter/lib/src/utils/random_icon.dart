import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RandomIcon {
  static final List<IconData> icones = [
    FontAwesomeIcons.hatWizard,
    FontAwesomeIcons.book,
    FontAwesomeIcons.wandMagicSparkles,
    FontAwesomeIcons.wandSparkles,
    FontAwesomeIcons.wandMagic,
    FontAwesomeIcons.skull,
  ];

  static IconData getRandomIcon() {
    final random = Random();
    return icones[random.nextInt(icones.length)];
  }
}