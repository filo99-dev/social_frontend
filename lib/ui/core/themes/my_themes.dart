import "package:flutter/material.dart";

abstract final class MyThemes {
  static const _textTheme = TextTheme(
    headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
    headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: Colors.grey,
    ),
    labelLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    ),
  );

  static ColorScheme _lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3b608f),
      surfaceTint: Color(0xff3b608f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd4e3ff),
      onPrimaryContainer: Color(0xff214876),
      secondary: Color(0xff01677d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffb3ebff),
      onSecondaryContainer: Color(0xff004e5f),
      tertiary: Color(0xff6e5d0e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfffae287),
      onTertiaryContainer: Color(0xff544600),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff8f9ff),
      onSurface: Color(0xff191c20),
      onSurfaceVariant: Color(0xff43474e),
      outline: Color(0xff73777f),
      outlineVariant: Color(0xffc3c6cf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3035),
      inversePrimary: Color(0xffa5c8fe),
      primaryFixed: Color(0xffd4e3ff),
      onPrimaryFixed: Color(0xff001c39),
      primaryFixedDim: Color(0xffa5c8fe),
      onPrimaryFixedVariant: Color(0xff214876),
      secondaryFixed: Color(0xffb3ebff),
      onSecondaryFixed: Color(0xff001f27),
      secondaryFixedDim: Color(0xff86d1ea),
      onSecondaryFixedVariant: Color(0xff004e5f),
      tertiaryFixed: Color(0xfffae287),
      onTertiaryFixed: Color(0xff221b00),
      tertiaryFixedDim: Color(0xffdcc66e),
      onTertiaryFixedVariant: Color(0xff544600),
      surfaceDim: Color(0xffd9dae0),
      surfaceBright: Color(0xfff8f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3fa),
      surfaceContainer: Color(0xffededf4),
      surfaceContainerHigh: Color(0xffe7e8ee),
      surfaceContainerHighest: Color(0xffe1e2e9),
    );
  }

  static ThemeData light() {
    return theme(_lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff083764),
      surfaceTint: Color(0xff3b608f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4b6f9f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003c49),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff21768c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff413500),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7e6c1e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8f9ff),
      onSurface: Color(0xff0f1116),
      onSurfaceVariant: Color(0xff32363d),
      outline: Color(0xff4f535a),
      outlineVariant: Color(0xff696d75),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3035),
      inversePrimary: Color(0xffa5c8fe),
      primaryFixed: Color(0xff4b6f9f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff315685),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff21768c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff005d71),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7e6c1e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff645402),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc5c6cc),
      surfaceBright: Color(0xfff8f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3fa),
      surfaceContainer: Color(0xffe7e8ee),
      surfaceContainerHigh: Color(0xffdbdce3),
      surfaceContainerHighest: Color(0xffd0d1d8),
    );
  }

  static ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002d56),
      surfaceTint: Color(0xff3b608f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff234a79),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff00313c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff005062),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff352b00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff574800),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff282c33),
      outlineVariant: Color(0xff454951),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3035),
      inversePrimary: Color(0xffa5c8fe),
      primaryFixed: Color(0xff234a79),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff023361),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff005062),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003845),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff574800),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3d3200),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb7b8bf),
      surfaceBright: Color(0xfff8f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f0f7),
      surfaceContainer: Color(0xffe1e2e9),
      surfaceContainerHigh: Color(0xffd3d4da),
      surfaceContainerHighest: Color(0xffc5c6cc),
    );
  }

  static ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme _darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa5c8fe),
      surfaceTint: Color(0xffa5c8fe),
      onPrimary: Color(0xff00315d),
      primaryContainer: Color(0xff214876),
      onPrimaryContainer: Color(0xffd4e3ff),
      secondary: Color(0xff86d1ea),
      onSecondary: Color(0xff003642),
      secondaryContainer: Color(0xff004e5f),
      onSecondaryContainer: Color(0xffb3ebff),
      tertiary: Color(0xffdcc66e),
      onTertiary: Color(0xff3a3000),
      tertiaryContainer: Color(0xff544600),
      onTertiaryContainer: Color(0xfffae287),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff111318),
      onSurface: Color(0xffe1e2e9),
      onSurfaceVariant: Color(0xffc3c6cf),
      outline: Color(0xff8d9199),
      outlineVariant: Color(0xff43474e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e9),
      inversePrimary: Color(0xff3b608f),
      primaryFixed: Color(0xffd4e3ff),
      onPrimaryFixed: Color(0xff001c39),
      primaryFixedDim: Color(0xffa5c8fe),
      onPrimaryFixedVariant: Color(0xff214876),
      secondaryFixed: Color(0xffb3ebff),
      onSecondaryFixed: Color(0xff001f27),
      secondaryFixedDim: Color(0xff86d1ea),
      onSecondaryFixedVariant: Color(0xff004e5f),
      tertiaryFixed: Color(0xfffae287),
      onTertiaryFixed: Color(0xff221b00),
      tertiaryFixedDim: Color(0xffdcc66e),
      onTertiaryFixedVariant: Color(0xff544600),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e13),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff32353a),
    );
  }

  static ThemeData dark() {
    return theme(_darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcaddff),
      surfaceTint: Color(0xffa5c8fe),
      onPrimary: Color(0xff00264b),
      primaryContainer: Color(0xff6f92c5),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xff9fe7ff),
      onSecondary: Color(0xff002a34),
      secondaryContainer: Color(0xff4e9bb2),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff3dc81),
      onTertiary: Color(0xff2e2500),
      tertiaryContainer: Color(0xffa4903e),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd9dce5),
      outline: Color(0xffafb2bb),
      outlineVariant: Color(0xff8d9099),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e9),
      inversePrimary: Color(0xff224977),
      primaryFixed: Color(0xffd4e3ff),
      onPrimaryFixed: Color(0xff001127),
      primaryFixedDim: Color(0xffa5c8fe),
      onPrimaryFixedVariant: Color(0xff083764),
      secondaryFixed: Color(0xffb3ebff),
      onSecondaryFixed: Color(0xff00141a),
      secondaryFixedDim: Color(0xff86d1ea),
      onSecondaryFixedVariant: Color(0xff003c49),
      tertiaryFixed: Color(0xfffae287),
      onTertiaryFixed: Color(0xff161100),
      tertiaryFixedDim: Color(0xffdcc66e),
      onTertiaryFixedVariant: Color(0xff413500),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff42444a),
      surfaceContainerLowest: Color(0xff05070b),
      surfaceContainerLow: Color(0xff1b1e22),
      surfaceContainer: Color(0xff25282d),
      surfaceContainerHigh: Color(0xff303338),
      surfaceContainerHighest: Color(0xff3b3e43),
    );
  }

  static ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffeaf0ff),
      surfaceTint: Color(0xffa5c8fe),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffa1c5fa),
      onPrimaryContainer: Color(0xff000b1d),
      secondary: Color(0xffd9f5ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff82cde6),
      onSecondaryContainer: Color(0xff000d12),
      tertiary: Color(0xfffff0bd),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd8c26b),
      onTertiaryContainer: Color(0xff0f0b00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff111318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffedf0f9),
      outlineVariant: Color(0xffbfc2cb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e9),
      inversePrimary: Color(0xff224977),
      primaryFixed: Color(0xffd4e3ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffa5c8fe),
      onPrimaryFixedVariant: Color(0xff001127),
      secondaryFixed: Color(0xffb3ebff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff86d1ea),
      onSecondaryFixedVariant: Color(0xff00141a),
      tertiaryFixed: Color(0xfffae287),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffdcc66e),
      onTertiaryFixedVariant: Color(0xff161100),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff4e5055),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1d2024),
      surfaceContainer: Color(0xff2e3035),
      surfaceContainerHigh: Color(0xff393b41),
      surfaceContainerHighest: Color(0xff44474c),
    );
  }

  static ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  static ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: _textTheme,
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
