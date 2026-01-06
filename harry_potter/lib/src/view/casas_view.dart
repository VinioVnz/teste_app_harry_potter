import 'package:flutter/material.dart';
import 'package:harry_potter/src/view/detalhes_views/casas_detalhe_view.dart';
import 'package:harry_potter/src/widgets/house_card.dart';

class CasasView extends StatelessWidget {
  const CasasView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8,
          children: [
            HouseCard(
              houseImage: 'assets/images/grifinoria.png',
              houseName: 'Grifinória',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CasaDetalheView(house: 'Gryffindor'),
                  ),
                );
              },
            ),
            HouseCard(
              houseImage: 'assets/images/soucerina.png',
              houseName: 'Sonserina',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CasaDetalheView(house: 'Slytherin'),
                  ),
                );
              },
            ),
            HouseCard(
              houseImage: 'assets/images/ravenclaw.png',
              houseName: 'Corvinal',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CasaDetalheView(house: 'Ravenclaw'),
                  ),
                );
              },
            ),
            HouseCard(
              houseImage: 'assets/images/hufflepuff.png',
              houseName: 'Lufa-Lufa',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CasaDetalheView(house: 'Hufflepuff'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
