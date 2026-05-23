import 'package:flutter/material.dart';

// ==========================
// CURSOS HERO SECTION
// Exibe o topo da página de Cursos:
//  - Ícone de formatura em fundo verde claro (centralizado)
//  - Título "Cursos e Capacitação"
//  - Subtítulo explicativo
//  - Imagem de destaque com bordas arredondadas
// ==========================

class CursosHeroSection extends StatelessWidget {
  const CursosHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF5F3FF), // fundo lilás bem claro, igual ao design
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        children: [
          // ÍCONE - círculo verde com ícone de formatura
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: const Color(0xFFD1FAE5), // verde bem claro (igual ao design)
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              Icons.school_outlined,
              color: Color(0xFF10B981), // verde médio
              size: 32,
            ),
          ),

          const SizedBox(height: 20),

          // TÍTULO
          const Text(
            'Cursos e Capacitação',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              height: 1.2,
            ),
          ),

          const SizedBox(height: 12),

          // SUBTÍTULO
          Text(
            'Investir em conhecimento é o melhor caminho para se destacar no mercado. '
            'Confira plataformas e cursos gratuitos para impulsionar sua carreira.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              height: 1.6,
            ),
          ),

          const SizedBox(height: 28),

          // IMAGEM DE DESTAQUE
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'lib/images/cursos.png',
              height: 260,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
