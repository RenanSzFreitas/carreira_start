import 'package:flutter/material.dart';
import '../pages/creditos_page.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF7232F2);
    const Color darkBackground = Color(0xFF111827);

    return Container(
      color: darkBackground,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // LOGO + NOME
          Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'lib/images/icon.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'Carreira Start',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // DESCRIÇÃO
          const Text(
            'Orientando jovens de 16 a 20 anos para um futuro\nprofissional de sucesso.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 32),

          // RECURSOS
          const Text(
            'Recursos',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 12),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CreditosPage(),
                ),
              );
            },

            child: const Text(
              'Créditos',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}