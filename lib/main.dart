import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() => runApp(CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({super.key});

  @override
  Widget build(BuildContext context) {
    const corCinza = Color(0xFF616161);
    final colorScheme = ColorScheme.dark(
      primary: corCinza,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      secondaryContainer: Colors.brown,
    );
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: colorScheme,
        scaffoldBackgroundColor: corCinza,
        textTheme: TextTheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: corCinza,
          foregroundColor: Colors.white,
          elevation: 4,
          shadowColor: Colors.black,
        ),
      ),
      home: MainScreen(),
    );
  }
}
