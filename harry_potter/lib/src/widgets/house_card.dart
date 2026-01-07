import 'package:flutter/material.dart';

class HouseCard extends StatelessWidget {
  final String houseImage;
  final String houseName;
  final VoidCallback onTap;

  const HouseCard({
    super.key,
    required this.houseImage,
    required this.houseName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(child: Image.asset(houseImage)),
              const SizedBox(height: 8),
              Text(
                houseName,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
