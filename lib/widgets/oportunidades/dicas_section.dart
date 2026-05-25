import 'package:flutter/material.dart';

import 'dica_card.dart';

class DicasSection extends StatelessWidget {
  const DicasSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Text(
            'Dicas para Encontrar Oportunidades',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30),

          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: const [
              DicaCard(
                icon: Icons.calendar_month,
                titulo: 'Saiba quando procurar',
                descricao:
                'Programas geralmente abrem no início e meio do ano.',
              ),

              DicaCard(
                icon: Icons.people_outline,
                titulo: 'Use seus contatos',
                descricao:
                'Amigos e professores podem indicar oportunidades.',
              ),

              DicaCard(
                icon: Icons.trending_up,
                titulo: 'Candidate-se estrategicamente',
                descricao:
                'Foque em vagas compatíveis com seu perfil.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}