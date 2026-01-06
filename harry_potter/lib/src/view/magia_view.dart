import 'package:flutter/material.dart';
import 'package:harry_potter/src/view/detalhes_views/magia_detalhe_view.dart';
import 'package:harry_potter/src/viewModel/magia_view_model.dart';
import 'package:harry_potter/src/widgets/magia_card.dart';
import 'package:provider/provider.dart';

class MagiaView extends StatefulWidget {
  const MagiaView({super.key});

  @override
  State<MagiaView> createState() => _MagiaViewState();
}

class _MagiaViewState extends State<MagiaView> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<MagiaViewModel>().getAllMagias();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MagiaViewModel>();

    if (viewModel.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (viewModel.error != null) {
      return Center(child: Text(viewModel.error!));
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        itemCount: viewModel.magias.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 colunas
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.85, // ajuste fino do tamanho do card
        ),
        itemBuilder: (context, index) {
          final magia = viewModel.magias[index];
          return MagiaCard(
            magia: magia,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => MagiaDetalheView(magia: magia),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
