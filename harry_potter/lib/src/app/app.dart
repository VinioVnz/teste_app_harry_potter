import 'package:flutter/material.dart';
import 'package:harry_potter/src/app/app_routes.dart';
import 'package:harry_potter/src/view/casas_view.dart';
import 'package:harry_potter/src/view/home_view.dart';
import 'package:harry_potter/src/view/magia_view.dart';
import 'package:harry_potter/src/view/personagens_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Teste da W2O",
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: generateRoutes(),
      theme: ThemeData(
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
    );
  }
}
