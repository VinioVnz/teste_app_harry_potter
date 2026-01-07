import 'package:flutter/material.dart';
import 'package:harry_potter/src/app/app_routes.dart';
import 'package:harry_potter/src/view/animation/animation_view.dart';
import 'package:harry_potter/src/viewModel/theme_view_model.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final themeViewModel = context.watch<ThemeViewModel>();

    return MaterialApp(
      title: "App Teste da W2O",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (_) => const AnimationView(),
        ...generateRoutes(),
      },

      themeMode: themeViewModel.themeMode,

      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xff440719),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff440719),
          secondary: const Color(0xffE09C09),
          brightness: Brightness.light,
        ),
        fontFamily: "RobotoCondensed",
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff440719),
          foregroundColor: Color(0xffE09C09),
          titleTextStyle: TextStyle(
            fontFamily: "HarryP",
            color: Color(0xffE09C09),
            fontSize: 24,
          ),
        ),
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff194629),
          secondary: Colors.white,
          brightness: Brightness.dark,
        ),

        primaryColor: Color(0xff194629),
        scaffoldBackgroundColor: const Color(0xff242424),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff194629),
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontFamily: "HarryP",
            color: Colors.white,
            fontSize: 24,
          ),
        ),

        drawerTheme: DrawerThemeData(surfaceTintColor: Colors.transparent),
      ),
    );
  }
}
