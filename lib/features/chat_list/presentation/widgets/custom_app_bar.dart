import 'package:flutter/material.dart';

import 'search_panel.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 72.0);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      title: Text(
        'Чаты',
        style: theme.textTheme.bodyLarge,
      ),
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: SearchPanel(),
        ),
      ),
      // Другие настройки AppBar
    );
  }
}

