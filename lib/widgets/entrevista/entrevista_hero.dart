import 'package:flutter/material.dart';

class EntrevistaHero extends StatelessWidget {
  const EntrevistaHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Ícone centralizado
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFE0E7FF), // Azul claro
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.chat_bubble_outline, color: Color(0xFF3B82F6), size: 32),
          ),
          const SizedBox(height: 24),

          // Título
          const Text(
            'Preparação para Entrevistas',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),

          // Subtítulo
          const Text(
            'Sua primeira entrevista pode ser nervosa, mas com preparação você vai arrasar!\nConfira nossas dicas e exemplos de respostas.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 48),

          // Imagem
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?auto=format&fit=crop&q=80&w=1000', // Imagem placeholder
              height: 350,
              width: 800,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}