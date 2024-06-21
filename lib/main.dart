import 'package:fl001/cuncurency_project/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fa', ''), // Farsi
        ],
        theme: ThemeData(
          fontFamily: 'iranSans',
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              fontFamily: 'iranSans',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            headlineMedium: TextStyle(
              fontFamily: 'iranSans',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            headlineSmall: TextStyle(
              fontFamily: 'iranSans',
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            bodyMedium: TextStyle(
              fontFamily: 'iranSans',
              fontSize: 13,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const Home());
  }
}
