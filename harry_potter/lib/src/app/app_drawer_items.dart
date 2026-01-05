import 'package:flutter/material.dart';
import 'package:harry_potter/src/view/casas_view.dart';
import 'package:harry_potter/src/view/home_view.dart';
import 'package:harry_potter/src/view/magia_view.dart';
import 'package:harry_potter/src/view/personagens_view.dart';

class MenuModel {
  final String title;
  final IconData icon;
  final String route;
  final Widget page;

  MenuModel({
    required this.title,
    required this.icon,
    required this.route,
    required this.page,
  });
}

final List<MenuModel> appMenuItems = [
  MenuModel(
    title: 'Início',
    icon: Icons.home,
    route: '/home',
    page: HomeView(),
  ),
  MenuModel(
    title: 'Personagens',
    icon: Icons.book,
    route: '/personagens',
    page: PersonagensView(),
  ),
  MenuModel(
    title: 'Casas',
    icon: Icons.auto_awesome,
    route: '/casas',
    page: CasasView(),
  ),
  MenuModel(
    title: 'Magias',
    icon: Icons.star              ,
    route: '/magias',
    page: MagiaView(),
  ),
];
