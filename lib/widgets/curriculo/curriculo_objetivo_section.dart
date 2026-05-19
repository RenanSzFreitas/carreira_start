import 'package:flutter/material.dart';

class CurriculoObjetivoSection extends StatelessWidget {
  const CurriculoObjetivoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo.shade50,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Container(
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
            // Título
            const Text(
              'Exemplo de Objetivo Profissional',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 20),

            // Bloco de citação
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Text(
                '"Jovem em busca da primeira oportunidade profissional na área administrativa. Possuo boa comunicação, facilidade para trabalhar em equipe e grande interesse em aprender. Atualmente cursando o 3º ano do Ensino Médio, disponível para trabalhar no período da tarde."',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  fontStyle: FontStyle.italic,
                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Banner de dica
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFEEF2FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: '💡 '),
                    TextSpan(
                      text: 'Dica: ',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[700],
                      ),
                    ),
                    TextSpan(
                      text:
                      'Adapte seu objetivo para cada vaga que você se candidatar. Mostre que você pesquisou sobre a empresa e a posição.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.indigo[600],
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
