import 'package:flutter/material.dart';

class CardsSection extends StatelessWidget {
  const CardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF7232F2);

    return Container(
      color: const Color(0xFFF9FAFB),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Tudo que Você Precisa para\nComeçar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              height: 1.2,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            'Explore nossos recursos e guias criados\nespecialmente para jovens que estão\nentrando no mercado de trabalho.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              height: 1.5,
            ),
          ),

          const SizedBox(height: 32),

          // CARDS
          FeatureCard(
            icon: Icons.description,
            iconColor: const Color(0xFFA855F7),
            title: 'Monte seu Currículo',
            description:
            'Aprenda a criar um currículo profissional que chama atenção dos recrutadores',
            primaryPurple: primaryPurple,
          ),

          const SizedBox(height: 16),

          FeatureCard(
            icon: Icons.chat_bubble_rounded,
            iconColor: const Color(0xFF3B82F6),
            title: 'Prepare-se para Entrevistas',
            description:
            'Dicas e exemplos de respostas para suas primeiras entrevistas de emprego',
            primaryPurple: primaryPurple,
          ),

          const SizedBox(height: 16),

          FeatureCard(
            icon: Icons.school,
            iconColor: const Color(0xFF10B981),
            title: 'Cursos Gratuitos',
            description:
            'Descubra cursos e capacitações que aumentam suas chances no mercado',
            primaryPurple: primaryPurple,
          ),

          const SizedBox(height: 16),

          FeatureCard(
            icon: Icons.work,
            iconColor: const Color(0xFFF97316),
            title: 'Oportunidades',
            description:
            'Conheça programas de jovem aprendiz, estágios e primeiro emprego',
            primaryPurple: primaryPurple,
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;
  final Color primaryPurple;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
    required this.primaryPurple,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: iconColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.white, size: 28),
          ),

          const SizedBox(height: 16),

          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              height: 1.4,
            ),
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              Text(
                'Saiba mais',
                style: TextStyle(
                  color: primaryPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              Icon(Icons.arrow_forward, color: primaryPurple, size: 16),
            ],
          ),
        ],
      ),
    );
  }
}