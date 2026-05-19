import 'package:flutter/material.dart';

class CurriculoHeroSection extends StatelessWidget {
  const CurriculoHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF7232F2);

    return Container(
      width: double.infinity,
      color: const Color(0xFFF5F3FF),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Ícone centralizado
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFEDE9FE),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              Icons.description_rounded,
              color: primaryPurple,
              size: 32,
            ),
          ),

          const SizedBox(height: 24),

          // Título
          const Text(
            'Como Montar seu Currículo',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              height: 1.2,
            ),
          ),

          const SizedBox(height: 16),

          // Subtítulo
          Text(
            'Seu currículo é a primeira impressão que os recrutadores terão de você. Aprenda a criar um currículo profissional e eficaz.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              height: 1.6,
            ),
          ),

          const SizedBox(height: 32),

          // Imagem
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child:  Image.asset(
              'lib/images/curriculo.png',
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 220,
                width: double.infinity,
                color: Colors.grey[200],
                child: const Icon(Icons.image_not_supported, size: 48, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
