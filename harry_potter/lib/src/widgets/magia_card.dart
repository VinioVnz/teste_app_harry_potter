import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:harry_potter/src/model/magia_model.dart';
import 'package:harry_potter/src/utils/random_icon.dart';

class MagiaCard extends StatelessWidget {
  final MagiaModel magia;
  final VoidCallback? onTap;
  const MagiaCard({super.key, required this.magia, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(RandomIcon.getRandomIcon(), size: 48, color: Color(0xff440719)),
              const SizedBox(height: 8),
              Text(
                magia.name,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
