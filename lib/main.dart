import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/navigation/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ThemeData theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: const Color.fromARGB(255, 131, 57, 0),
    ),
    textTheme: GoogleFonts.latoTextTheme());

void main() {
  runApp(
    const ProviderScope(
      child: MealApp(),
    ),
  );
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Meal App',
      theme: theme,
    );
  }
}
