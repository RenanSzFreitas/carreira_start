import 'package:flutter/material.dart';

class WarningSection extends StatelessWidget {
  const WarningSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 64, top: 24),
      child: Center(
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(
            maxWidth: 800,
          ),
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: const Color(0xFFFFF7ED), // Laranja fundo
            border: Border.all(color: const Color(0xFFFED7AA)), // Laranja borda
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.warning_amber_rounded, color: Color(0xFFC2410C), size: 28),
                  SizedBox(width: 12),
                  Text(
                    'Atenção: O que NÃO fazer',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF9A3412),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _buildWarningItem('Chegar atrasado sem avisar'),
              _buildWarningItem('Falar mal de empregos ou escolas anteriores'),
              _buildWarningItem('Usar gírias ou linguagem informal'),
              _buildWarningItem('Interromper o entrevistador'),
              _buildWarningItem('Mentir sobre experiências ou habilidades'),
              _buildWarningItem('Usar o celular durante a entrevista'),
              _buildWarningItem('Demonstrar desinteresse ou pressa'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWarningItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.change_history, color: Color(0xFFC2410C), size: 18), // Ícone de triângulo
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Color(0xFF9A3412), fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}