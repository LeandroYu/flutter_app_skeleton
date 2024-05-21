import 'package:flutter/material.dart';

class DSColors {
  const DSColors._();

  static const int _primary = 0xFFFF9800;
  static const MaterialColor primary = MaterialColor(
    _primary,
    <int, Color>{
      100: Color(0xFFFFE2B8),
      200: Color(0xFFFFD08A),
      300: Color(0xFFFFBD5C),
      400: Color(0xFFFFAB2E),
      500: Color(_primary),
      600: Color(0xFFD17D00),
      700: Color(0xFFA36100),
      800: Color(0xFF754600),
      900: Color(0xFF472B00),
    },
  );

  static const int _secondary = 0xFF607D8B;
  static const MaterialColor secondary = MaterialColor(
    _secondary,
    <int, Color>{
      100: Color(0xFFADBFC7),
      200: Color(0xFFADBFC7),
      300: Color(0xFF92AAB4),
      400: Color(0xFF7794A1),
      500: Color(_secondary),
      600: Color(0xFF4D6470),
      700: Color(0xFF3A4C55),
      800: Color(0xFF27333A),
      900: Color(0xFF151B1E),
    },
  );

  static const int _feedbackInfo = 0xFF0288D1;
  static const MaterialColor feedbackInfo = MaterialColor(
    _feedbackInfo,
    <int, Color>{
      200: Color(0xFF89D4FE),
      400: Color(0xFF30B3FD),
      500: Color(_feedbackInfo),
      600: Color(0xFF027ABC),
      800: Color(0xFF026DA7),
    },
  );

  static const int _feedbackSuccess = 0xFF689F38;
  static const MaterialColor feedbackSuccess = MaterialColor(
    _feedbackSuccess,
    <int, Color>{
      200: Color(0xFFC2E0A8),
      400: Color(0xFF94C966),
      500: Color(_feedbackSuccess),
      600: Color(0xFF5E8F32),
      800: Color(0xFF537F2D),
    },
  );

  static const int _feedbackWarning = 0xFFFBC02D;
  static const MaterialColor feedbackWarning = MaterialColor(
    _feedbackWarning,
    <int, Color>{
      200: Color(0xFFFDE6AB),
      400: Color(0xFFFCD269),
      500: Color(_feedbackWarning),
      600: Color(0xFFFAB710),
      800: Color(0xFFE8A704),
    },
  );

  static const int _feedbackNegative = 0xFFD32F2F;
  static const MaterialColor feedbackNegative = MaterialColor(
    _feedbackNegative,
    <int, Color>{
      200: Color(0xFFEDACAC),
      400: Color(0xFFDF6C6C),
      500: Color(_feedbackNegative),
      600: Color(0xFFC02929),
      800: Color(0xFFAA2424),
    },
  );

  static const int _grey = 0xFF8B8B8B;
  static const MaterialColor grey = MaterialColor(
    _grey,
    <int, Color>{
      100: Color(0xFFE8E8E8),
      200: Color(0xFFD1D1D1),
      300: Color(0xFFB9B9B9),
      400: Color(0xFFA2A2A2),
      500: Color(_grey),
      600: Color(0xFF747474),
      700: Color(0xFF5D5D5D),
      800: Color(0xFF464646),
      900: Color(0xFF2E2E2E),
      1000: Color(0xFF171717),
    },
  );

  static const int _contrastBase = 0xFF495057;
  static const MaterialColor contrastBase = MaterialColor(
    _contrastBase,
    <int, Color>{
      300: Color(0xFFCED4DA),
      400: Color(0xFFe9ecef),
      500: Color(_contrastBase),
      800: Color(0xFF212121),
    },
  );

  static const Color black = Color(0xFF000000);
}
