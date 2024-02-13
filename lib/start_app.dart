import 'package:flutter/material.dart';
import 'package:test_ch_app/router/routes.dart';

import 'theme/theme.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      routes: routes,
    );
  }
}
