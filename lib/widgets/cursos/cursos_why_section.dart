import 'package:flutter/material.dart';

// ==========================
// CURSOS WHY SECTION
// Seção "Por que fazer cursos?" com 3 benefícios:
//  - Destaque-se (ícone verde)
//  - Aprenda no seu ritmo (ícone azul)
//  - Gratuito (ícone roxo)
// ==========================

class CursosWhySection extends StatelessWidget {
  const CursosWhySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        // fundo verde bem clarinho com toque de azul (igual ao design)
        color: const Color(0xFFF0FDF4),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          // TÍTULO DA SEÇÃO
          const Text(
            'Por que fazer cursos?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 28),

          // 3 BENEFÍCIOS EM LINHA
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Benefício 1
              _WhyItem(
                icon: Icons.workspace_premium_outlined,
                iconColor: Colors.white,
                circleColor: const Color(0xFF10B981), // verde
                title: 'Destaque-se',
                description:
                    'Certificações mostram seu comprometimento e vontade de aprender',
              ),

              // Benefício 2
              _WhyItem(
                icon: Icons.access_time_outlined,
                iconColor: Colors.white,
                circleColor: const Color(0xFF3B82F6), // azul
                title: 'Aprenda no seu ritmo',
                description:
                    'Cursos online permitem estudar quando e onde você puder',
              ),

              // Benefício 3
              _WhyItem(
                icon: Icons.school_outlined,
                iconColor: Colors.white,
                circleColor: const Color(0xFF7232F2), // roxo
                title: 'Gratuito',
                description:
                    'Muitas plataformas oferecem cursos de qualidade sem custo',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ==========================
// ITEM INDIVIDUAL DO "POR QUÊ"
// Ícone circular + título + descrição
// ==========================
class _WhyItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color circleColor;
  final String title;
  final String description;

  const _WhyItem({
    required this.icon,
    required this.iconColor,
    required this.circleColor,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          children: [
            // CÍRCULO COM ÍCONE
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: circleColor,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: iconColor, size: 26),
            ),

            const SizedBox(height: 12),

            // TÍTULO
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 6),

            // DESCRIÇÃO
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey[600],
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
