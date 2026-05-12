import 'package:flutter/material.dart';

class PlanoDesenvolvimento extends StatelessWidget {
  const PlanoDesenvolvimento({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFEAF8EE),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFF9AE6B4),
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Plano de Desenvolvimento\nPessoal',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F7B3A),
              height: 1.3,
            ),
          ),

          const SizedBox(height: 24),

          _buildCard(
            numero: '1',
            titulo: 'Identifique suas competências mais fracas',
            descricao:
            'Use a autoavaliação acima para identificar áreas que precisam de mais atenção.',
          ),

          const SizedBox(height: 16),

          _buildCard(
            numero: '2',
            titulo: 'Escolha 2-3 competências para focar',
            descricao:
            'Não tente desenvolver tudo de uma vez. Foque em poucas habilidades por vez.',
          ),

          const SizedBox(height: 16),

          _buildCard(
            numero: '3',
            titulo: 'Pratique diariamente',
            descricao:
            'Busque oportunidades no dia a dia para aplicar e desenvolver essas competências.',
          ),

          const SizedBox(height: 16),

          _buildCard(
            numero: '4',
            titulo: 'Peça feedback',
            descricao:
            'Pergunte a amigos, professores ou familiares como você está evoluindo.',
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required String numero,
    required String titulo,
    required String descricao,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: const BoxDecoration(
              color: Color(0xFF12B347),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                numero,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF222222),
                    height: 1.3,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  descricao,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFF6B7280),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}