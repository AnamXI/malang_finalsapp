import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color.fromRGBO(0, 0, 0, 1);
  static Color secondaryColor = const Color.fromRGBO(20, 20, 20, 1);
  static Color colorAccent = const Color.fromRGBO(255, 218, 89, 1);
}

ThemeData dsTheme = ThemeData(
  //seed
  colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
  ),

  scaffoldBackgroundColor: AppColors.secondaryColor,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.primaryColor,
    foregroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),

  textTheme: const TextTheme().copyWith(
    bodyMedium: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        letterSpacing: 1,
        fontFamily: 'CGothic',
    ),
    headlineMedium: const TextStyle(
      color: Colors.white,
      fontSize: 16,
      letterSpacing: 2,
        fontFamily: 'CGothic',
    ),
    titleMedium: TextStyle(
      color: AppColors.colorAccent,
      fontSize: 24,
      letterSpacing: 4,
      height: 1,
      fontFamily: 'Optimus',
    )
  ),

    cardTheme: CardTheme(
    color: AppColors.primaryColor,
    surfaceTintColor: Colors.transparent,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
),

    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.black87,
      border: InputBorder.none,
      labelStyle: TextStyle(color: Colors.white),
      prefixIconColor: Colors.white,
    ),
);

class SText extends StatelessWidget {
  const SText(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyMedium);
  }
}

class SHead extends StatelessWidget {
  const SHead(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase(), style: Theme.of(context).textTheme.headlineMedium);
  }
}

class STitle extends StatelessWidget {
  const STitle(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.titleMedium);
  }
}
