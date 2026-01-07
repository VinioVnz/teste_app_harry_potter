import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:harry_potter/src/viewModel/theme_view_model.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ThemeViewModel>();
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return AppBar(
      title: Text(title, style: TextStyle(fontSize: 35)),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
          onPressed: () {
            viewModel.toggleTheme();
          },
        ),
      ],
    );
  }
}
