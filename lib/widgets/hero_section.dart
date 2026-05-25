import 'package:flutter/material.dart';

import '../../pages/curriculo_page.dart';
import '../../pages/oportunidades_page.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  final Color primaryPurple = const Color(0xFF7232F2);
  final Color darkBackground = const Color(0xFF111827);

  @override
  Widget build(BuildContext context) {
    return Container(

        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF8A2BE2), Color(0xFF3B5998)], // Gradiente Roxo -> Azul
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagem principal com bordas arredondadas (Imagem placeholder via rede)
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'lib/images/home.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            // Badge "Para jovens..."
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Para jovens de 16 a 20 anos',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 12),
              ),
            ),
            const SizedBox(height: 16),
            // Título principal
            const Text(
              'Seu Primeiro Passo no\nMercado de Trabalho',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 12),
            // Subtítulo
            const Text(
              'Orientação completa para você conquistar seu primeiro emprego e iniciar uma carreira de sucesso.',
              style: TextStyle(color: Colors.white, fontSize: 14, height: 1.5),
            ),
            const SizedBox(height: 24),
            // Botões
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CurriculoPage(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Começar Agora', style: TextStyle(color: primaryPurple, fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(width: 8),
                    Icon(Icons.arrow_forward, color: primaryPurple, size: 20),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white, width: 1.5),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const OportunidadesPage(),
                    ),
                  );
                },
                child: const Text('Ver Oportunidades', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      );
    }
  }
