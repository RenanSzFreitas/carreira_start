import 'package:flutter/material.dart';

class OportunidadesHero extends StatelessWidget {
  const OportunidadesHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 32,
      ),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,

            decoration: BoxDecoration(
              color: const Color(0xFFFEF3C7),
              borderRadius: BorderRadius.circular(16),
            ),

            child: const Icon(
              Icons.business_center_rounded,
              color: Color(0xFFF59E0B),
              size: 32,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Oportunidades de Trabalho',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              height: 1.2,
            ),
          ),

          const SizedBox(height: 14),

          const Text(
            'Conheça os principais programas e onde encontrar vagas para jovens que estão começando a carreira.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),

          const SizedBox(height: 40),

          Container(
            height: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                'lib/images/oportunidades.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}