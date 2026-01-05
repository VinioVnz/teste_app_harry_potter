import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'Olá! Seja bem-vindo ao meu aplicativo de teste da W2O, tudo sobre Harry Potter!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  height: 1.5, 
                ),
              ),
              SizedBox(height: 24),
              Divider(thickness: 1),
              SizedBox(height: 16),
              Text(
                'Desenvolvido por Vinícius Bornhofen',
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
