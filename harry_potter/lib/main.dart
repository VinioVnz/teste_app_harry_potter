import 'package:flutter/material.dart';
import 'package:harry_potter/src/app/app.dart';
import 'package:harry_potter/src/service/hp_api_service.dart';
import 'package:harry_potter/src/viewModel/personagens_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PersonagensViewModel(HpApiService()),
        ),
        // ChangeNotifierProvider(
        //   create: (_) => MagiasViewModel(HpApiService()),
        // ),
      ],
      child: const App(),
    ),
  );
}
