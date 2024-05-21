import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_colors.dart';
import 'font_sizes.dart';

class DSTypography {
  const DSTypography._();

  static const Color defaultColor = DSColors.contrastBase;
  static Text baseText(
    String text, {
    Key? key,
    TextAlign? textAlign,
    required Color color,
    required double fontSize,
    required FontWeight fontWeight,
    required FontStyle fontStyle,
    double? fontHeight,
    double? lineHeight,
    int? maxLines,
  }) {
    return Text(
      text,
      key: key,
      textAlign: textAlign,
      maxLines: maxLines,
      style: GoogleFonts.cabin(
        textStyle: TextStyle(color: color, height: fontHeight),
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        height: lineHeight,
      ),
    );
  }

  static Text displayLargeBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: 57,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text displayMediumBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: 45,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text displaySmallBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs36,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text headingLargeBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs32,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text headingMediumBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs28,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text headingSmallBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs24,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text titleLargeSemibold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w600,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs22,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text titleLargeRegular(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs22,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text titleMediumSemibold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w600,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs16,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text titleMediumRegular(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs16,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text titleSmallSemibold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.w600,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs14,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text bodyLargeBold(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.bold,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs16,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text bodyLargeRegular(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
    int? maxLines,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs16,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      maxLines: maxLines,
    );
  }

  static Text bodyMediumRegular(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs14,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text bodySmallRegular(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs12,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static Text paragraph(
    String text, {
    Key? key,
    TextAlign? textAlign,
    Color color = defaultColor,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
    double? fontSize,
  }) {
    return baseText(
      text,
      key: key,
      textAlign: textAlign,
      color: color,
      fontSize: fontSize ?? DSFontSizes.fs14,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }
}
