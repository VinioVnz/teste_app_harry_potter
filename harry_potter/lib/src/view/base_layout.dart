import 'package:flutter/material.dart';
import 'package:harry_potter/src/widgets/custom_appbar.dart';
import 'package:harry_potter/src/widgets/custom_drawer.dart';

class BaseLayout extends StatefulWidget {
  final String title;
  final Widget body;

  const BaseLayout({super.key, required this.title, required this.body});

  @override
  State<BaseLayout> createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: widget.title,),
      drawer: CustomDrawer(),
      body: widget.body,
    );
  }
}