import 'package:flutter/material.dart';

import 'programa_card.dart';

class ProgramasSection extends StatelessWidget {
  const ProgramasSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Text(
            'Tipos de Programas',
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
              ProgramaCard(
                icon: Icons.groups,
                iconColor: Colors.blue,
                titulo: 'Jovem Aprendiz',
                descricao:
                'Programa que combina trabalho e aprendizado teórico.',
                itens: [
                  'Idade: 14 a 24 anos',
                  'Jornada reduzida',
                  'Curso obrigatório',
                  'Carteira assinada',
                ],
              ),

              ProgramaCard(
                icon: Icons.menu_book,
                iconColor: Colors.green,
                titulo: 'Estágio',
                descricao:
                'Aprendizado prático relacionado ao curso técnico ou superior.',
                itens: [
                  'A partir de 16 anos',
                  'Bolsa-auxílio',
                  'Supervisor na empresa',
                  '4 a 6 horas por dia',
                ],
              ),

              ProgramaCard(
                icon: Icons.trending_up,
                iconColor: Colors.purple,
                titulo: 'Trainee',
                descricao:
                'Programa para recém-formados com plano acelerado.',
                itens: [
                  'Recém-formados',
                  'Salário competitivo',
                  'Plano de carreira',
                  'Rotação de áreas',
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}