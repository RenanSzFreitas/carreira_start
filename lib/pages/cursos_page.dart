import 'package:flutter/material.dart';

class CursosPage extends StatelessWidget {
  const CursosPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF7232F2);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cursos'),
        backgroundColor: primaryPurple,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _courseCard(
            title: 'Informática Básica',
            description: 'Aprenda o essencial para usar computador no dia a dia.',
            icon: Icons.computer,
          ),

          const SizedBox(height: 16),

          _courseCard(
            title: 'Como montar um currículo',
            description: 'Crie um currículo profissional mesmo sem experiência.',
            icon: Icons.description,
          ),

          const SizedBox(height: 16),

          _courseCard(
            title: 'Entrevista de emprego',
            description: 'Aprenda como se comportar e responder bem.',
            icon: Icons.record_voice_over,
          ),

          const SizedBox(height: 16),

          _courseCard(
            title: 'Comunicação profissional',
            description: 'Melhore sua forma de falar e se expressar.',
            icon: Icons.chat,
          ),
        ],
      ),
    );
  }

  Widget _courseCard({
    required String title,
    required String description,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.deepPurple.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.deepPurple),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),

          const Icon(Icons.arrow_forward_ios, size: 16)
        ],
      ),
    );
  }
}