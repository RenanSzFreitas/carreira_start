import 'package:flutter/material.dart';

// IMPORT DAS PÁGINAS
import 'pages/home_page.dart';
import 'pages/cursos_page.dart';
import 'pages/entrevista_page.dart';
import 'pages/oportunidades_page.dart';
import 'pages/competencias_page.dart';
import 'pages/curriculo_page.dart';

void main() {
  runApp(const CarreiraStartApp());
}

class CarreiraStartApp extends StatelessWidget {
  const CarreiraStartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carreira Start',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7232F2),
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
      ),

      // TELA INICIAL
      initialRoute: '/',

      // ROTAS DO APP
      routes: {
        '/': (context) => const HomePage(),
        '/curriculo': (context) => const CurriculoPage(),
        '/entrevista': (context) => const EntrevistaPage(),
        '/cursos': (context) => const CursosPage(),
        '/oportunidades': (context) => const OportunidadesPage(),
        '/competencias': (context) => const CompetenciasPage(),
      },
    );
  }
}