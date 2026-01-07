import 'package:flutter/material.dart';
import 'package:harry_potter/src/app/app.dart';
import 'package:harry_potter/src/service/hp_api_service.dart';
import 'package:harry_potter/src/viewModel/magia_view_model.dart';
import 'package:harry_potter/src/viewModel/personagens_view_model.dart';
import 'package:harry_potter/src/viewModel/theme_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final brightness =
      WidgetsBinding.instance.platformDispatcher.platformBrightness;

  final initialTheme = brightness == Brightness.dark
      ? ThemeMode.dark
      : ThemeMode.light;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PersonagensViewModel(service: HpApiService()),
        ),
        ChangeNotifierProvider(
          create: (_) => MagiaViewModel(service: HpApiService()),
        ),
        ChangeNotifierProvider(create: (_) => ThemeViewModel(initialTheme)),
      ],
      child: const App(),
    ),
  );
}
