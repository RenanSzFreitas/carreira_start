import 'package:flutter/material.dart';

// ==========================
// CURSOS TIPS SECTION
// Seção "Dicas para aproveitar melhor os cursos":
//  - Card com fundo lilás claro e borda roxa
//  - Ícone de lâmpada + título roxo
//  - Lista numerada de dicas
// ==========================

class CursosTipsSection extends StatelessWidget {
  const CursosTipsSection({super.key});

  static const Color _purple = Color(0xFF7232F2);
  static const Color _purpleLight = Color(0xFFF5F3FF); // fundo lilás suave
  static const Color _purpleBorder = Color(0xFFDDD6FE); // borda lilás

  static const List<String> _tips = [
    'Estabeleça uma rotina de estudos, mesmo que seja pouco tempo por dia',
    'Faça anotações e pratique o que aprendeu',
    'Participe dos fóruns e comunidades dos cursos',
    'Adicione os certificados no seu LinkedIn e currículo',
    'Comece por cursos básicos e vá avançando gradualmente',
    'Escolha cursos relacionados à área que você quer atuar',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: _purpleLight,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: _purpleBorder, width: 1.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TÍTULO COM ÍCONE DE LÂMPADA
            Row(
              children: const [
                Text('💡', style: TextStyle(fontSize: 20)),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Dicas para aproveitar melhor os cursos',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: _purple,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // LISTA NUMERADA DE DICAS
            ..._tips.asMap().entries.map(
              (entry) {
                final index = entry.key + 1; // começa em 1
                final tip = entry.value;

                return Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // NÚMERO em roxo e negrito
                      SizedBox(
                        width: 20,
                        child: Text(
                          '$index.',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: _purple,
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),

                      // TEXTO DA DICA
                      Expanded(
                        child: Text(
                          tip,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[800],
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
