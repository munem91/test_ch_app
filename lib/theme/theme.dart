import 'package:flutter/material.dart';

final themeData = ThemeData(
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
          fontFamily: 'Gilroy',
          fontSize: 15.0,
          fontWeight: FontWeight.w600,
          height: 1.2,
          letterSpacing: 0.0,
        ),
        bodySmall: TextStyle(
          color: Color(0xFF5E7A90),
          fontFamily: 'Gilroy',
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
          height: 1.0,
          letterSpacing: 0.0,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Gilroy',
          fontSize: 32.0,
          fontWeight: FontWeight.w600,
          height: 1.25, // или другое значение для line-height (39 / 32)
          letterSpacing: 0.0,
        ),
      ),
    );